---
title: "Security Checklist for Daily Development"
# meta title
meta_title: ""
# meta description
description: "Practical secure-development controls: dependency locking, secret scanning, SCA/SAST, CI hardening, account and notebook hygiene, containers and SBOM, and a response workflow."
# save as draft
draft: false
---

Adopt these controls in order. The first three &mdash; locked dependencies, secret scanning, and dependency scanning (SCA) &mdash; reduce most day-to-day risk.

#### Contents

- [Lock dependency versions](#1-lock-dependency-versions)
- [Scan for secrets early](#2-scan-for-secrets-early)
- [Scan dependencies (SCA)](#3-scan-dependencies-sca)
- [Scan code for vulnerabilities (SAST)](#4-scan-code-for-vulnerabilities-sast)
- [Harden CI/CD and build environments](#5-harden-cicd-and-build-environments)
- [Account hygiene](#6-account-hygiene)
- [Notebook and data-file hygiene](#7-notebook-and-data-file-hygiene)
- [Containers, SBOM, and artifact signing](#8-containers-sbom-and-artifact-signing)
- [Monitor and respond](#9-monitor-and-respond)
- [Know the OWASP Top 10](#10-know-the-owasp-top-10)

---------------

## 1) Lock dependency versions

You want reproducible installs: same versions on every machine and CI run. Each tool has two phases: one for installing dependencies and generate a lock file describing those dependencies, and one for building and running the code using the lock file.

**Python** (commit lock output):

- `uv` &rarr; `uv.lock`
- `poetry` &rarr; `poetry.lock`
- `pip-tools` &rarr; pinned `requirements.txt` with hashes

**Conda / mamba** (scientific Python):

- Export from explicit history: `conda env export --from-history > environment.yml` to avoid capturing platform-specific transitive pins.
- Use `conda-lock` to generate a multi-platform lock file (`conda-lock.yml`) that pins every package, version, and hash.
- Prefer `conda-forge` over ad-hoc channels. Conda-forge has recipe review, but is not immune to supply-chain issues.

**Node.js** (commit lock output):

- `npm` &rarr; `package-lock.json`
- `yarn` &rarr; `yarn.lock`
- `pnpm` &rarr; `pnpm-lock.yaml`

Use clean-install commands in CI:

- Node: `npm ci`
- Python (`uv`): `uv sync --frozen`
- Python (`pip-tools`): `pip install --require-hashes -r requirements.txt`
- Conda: `conda-lock install --name env conda-lock.yml`

`package.json` exact pins can be useful in applications, but lock files and controlled updates are the primary control.

## 2) Scan for secrets early

Catch secrets before push and in CI:

- **GitHub secret scanning** for public and private repos.
- **`gitleaks`** or **`trufflehog`** locally and in CI.
- **`pre-commit`** to run secret checks at commit time.

Important:

- Scan **history**, not just current files.
- Default detectors do not cover every internal token format; add custom patterns for organization-specific secrets.
- Use **push protection** where available to block commits containing detectable credentials.

## 3) Scan dependencies (SCA)

SCA (Software Composition Analysis) compares your dependency graph against known vulnerabilities. This is where most real-world damage happens, so run SCA first.

- **`osv-scanner`** (multi-ecosystem: Python, npm, Go, Rust, Maven, Cargo, &hellip;). One tool covers most scientific stacks.
- Python: `pip-audit`
- Node: `npm audit --audit-level=high`
- GitHub **Dependabot**: enable automated upgrade PRs and Dependabot alerts.

Run SCA in CI and fail builds on policy-defined severe findings.

## 4) Scan code for vulnerabilities (SAST)

SAST (Static Application Security Testing) flags suspicious code patterns.

- Python: `bandit -r src/`
- JavaScript/TypeScript: `eslint` + `eslint-plugin-security`
- Multi-language: `semgrep --config=auto`, CodeQL on GitHub

Start with high-confidence findings and tune rules to reduce noise.

## 5) Harden CI/CD and build environments

Supply-chain attacks increasingly target CI and build systems. Use this baseline:

- Run builds on ephemeral runners where possible.
- Use least-privilege tokens for CI jobs.
- Prefer short-lived credentials (OIDC federation) over long-lived static secrets.
- Restrict outbound network access from build jobs to trusted endpoints when practical.
- Do not expose privileged secrets to untrusted pull requests (especially forks).
- Treat lifecycle scripts (`preinstall`, `install`, `postinstall`) as executable code and monitor new script changes in dependency updates.

## 6) Account hygiene

The Shai-Hulud campaign succeeded because maintainer accounts were compromised. Protect yours.

- Enable **two-factor authentication** on GitHub, PyPI, npm, conda-forge, and any cloud console. Prefer **hardware security keys (FIDO2/WebAuthn)** over SMS or TOTP where possible.
- Use a password manager. No reuse.
- Use **personal access tokens with the narrowest scope** that works, and set expirations. Prefer **fine-grained PATs** on GitHub, and OIDC federation from CI when you can avoid a static token entirely.
- Review authorized OAuth apps and SSH keys on your GitHub account at least yearly.

## 7) Notebook and data-file hygiene

Scientific workflows run on notebooks and shared data. Both leak secrets and execute code.

- **Strip notebook outputs before commit**: add `nbstripout` as a `pre-commit` hook. Output cells often contain API responses, tokens, printed `os.environ`, and PII.
- **Treat "Run All" on a downloaded notebook** the same as running an unreviewed script: read it first.
- Keep credentials out of notebooks. Load them from environment variables or a secret manager, not from a cell.
- Do not unpickle (`pickle`, `joblib`) or `torch.load` files from untrusted sources. Use `weights_only=True` on PyTorch &ge; 2.6, or prefer `safetensors`.
- On shared HPC / multi-user systems, check permissions: `~/.ssh` should be `700`, key files `600`. Do not write secrets to world-readable scratch directories.

## 8) Containers, SBOM, and artifact signing

If you ship containers or build reusable artifacts:

- **Scan images**: `trivy image your/image:tag` (or `grype`) in CI, on the same schedule as SCA.
- **Pin base images by digest** (`FROM python@sha256:&hellip;`), not just by tag.
- **Generate an SBOM** for each release: `syft your/image:tag -o cyclonedx-json`, or `pip-audit --format=cyclonedx-json` for pure-Python projects. Several DOE and federal guidelines increasingly expect one.
- **Sign releases and images** with [sigstore / cosign](https://www.sigstore.dev/) or GitHub [artifact attestations](https://docs.github.com/en/actions/security-for-github-actions/using-artifact-attestations). Consumers can then verify provenance.

## 9) Monitor and respond

Scanning only helps if findings are triaged and owned.

- Check security alerts (Dependabot, code scanning, secret scanning) on a fixed schedule.
- Track open high/critical findings.
- Define ownership and remediation SLAs.
- Maintain a simple exception process with expiration dates for accepted risk.

Example response policy using [CVSS](https://www.first.org/cvss/):

| CVSS Score | Severity | Suggested response time |
|------------|----------|-------------------------|
| &gt;= 9.0    | Critical | Immediate / best effort |
| 7.0&ndash;8.9    | High     | Within 7 days           |
| 4.0&ndash;6.9    | Medium   | Planned remediation     |
| &lt;= 3.9    | Low      | Backlog / opportunistic |

## 10) Know the OWASP Top 10

The [OWASP Top 10](https://owasp.org/Top10/) is the shared language for common web-app risk classes:

1. Broken Access Control
2. Cryptographic Failures
3. Injection
4. Insecure Design
5. Security Misconfiguration
6. Vulnerable and Outdated Components
7. Identification and Authentication Failures
8. Software and Data Integrity Failures
9. Security Logging and Monitoring Failures
10. Server-Side Request Forgery (SSRF)

---------------

Continue with **[AI-assisted coding and agentic security review](/security_ai_agentic)**.
