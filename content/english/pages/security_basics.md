---
title: "Security Basics for Developers"
# meta title
meta_title: ""
# meta description
description: "The minimum secure coding concepts every developer should know before writing or shipping code."
# save as draft
draft: false
---

> **Note:** This page is intentionally short. It covers the minimum concepts you need before pushing code or accepting generated code.

#### Contents

- [Four common failure modes](#four-common-failure-modes)
- [Injection and untrusted input](#injection-and-untrusted-input)
- [Secret leaks](#secret-leaks)
- [Dependency and supply-chain risk](#dependency-and-supply-chain-risk)
- [Notebooks, model weights, and other "data" that runs code](#notebooks-model-weights-and-other-data-that-runs-code)

---------------

## Four common failure modes

Most security issues in research software fall into four buckets:

1. **Bugs in your own code** &mdash; e.g., accepting user input and using it unsafely.
2. **Information leaks** &mdash; secrets (API keys, passwords, tokens) committed to a repository.
3. **Vulnerable dependencies** &mdash; a library you depend on has a known security flaw.
4. **Supply-chain attacks** &mdash; a dependency (or publishing account) is compromised and ships malicious code.

The first two are in your direct control. The last two come from code you did not write but still execute in your environment.

## Injection and untrusted input

A classic vulnerability is **injection**: data from the outside world is pasted into a query, shell command, path, or template without strict validation.

Example (unsafe SQL construction):

```python
order_by = request.args.get("orderBy")
query = f"SELECT * FROM books ORDER BY {order_by}"
cursor.execute(query)
```

Depending on the database driver this can let an attacker append arbitrary SQL. Even where the driver blocks stacked statements, payloads like `title) --` or a subquery in the `ORDER BY` position can still leak data or denial-of-service the database.

You cannot fix this with parameterized queries ([OWASP SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html#defense-option-4-allow-list-input-validation)): placeholders (`?`, `%s`) bind **values**, not **identifiers** like column or table names. The correct pattern is to allow-list valid fields and map to known columns:

```python
ALLOWED_SORT = {
    "title": Books.title,
    "author": Books.author,
    "year": Books.year,
    "price": Books.price,
}

order_key = request.args.get("orderBy", "title")
order_col = ALLOWED_SORT.get(order_key, Books.title)
rows = Books.query.order_by(order_col).all()
```

For query **values**, always use parameterized queries (`cursor.execute("… WHERE id = ?", (user_id,))`), never f-strings or `%` formatting.

The same principle applies to shell commands (`subprocess`), file paths (path traversal), HTML output (XSS), and unsafe deserialization: **treat all external input as untrusted**.

## Secret leaks

A secret is anything that grants access: API keys, PATs (Personal Access Tokens), cloud credentials, private keys, signed URLs, database passwords.

Common leak paths:

- hard-coding a key to test quickly,
- committing `.env`, `config.json`, or credential files,
- pasting tokens into comments, logs, or issue threads.

Two baseline rules:

- **Store secrets in a secret manager or environment variables**, never in source files.
- **Block known secret file patterns in `.gitignore` before coding** (for example `.env`, `*.pem`, `credentials.json`).

If a secret is committed, rotate it immediately. History rewrite can reduce exposure but does not undo compromise.

## Dependency and supply-chain risk

Your code can be perfect and still be compromised by a dependency.

Recent example: **Shai-Hulud 2.0** (reported by Wiz in November 2025). The campaign involved compromised npm maintainer accounts and trojanized package versions. The incident write-up describes **25,000+ malicious repositories** and impact spanning **~500 GitHub users**, with ongoing package churn and secret exposure in CI and developer environments ([Wiz report](https://www.wiz.io/blog/shai-hulud-2-0-ongoing-supply-chain-attack)).

Key lesson: the attack path was dependency installation, not application feature code.

Python is exposed the same way. `pip install` can execute arbitrary code at install time when building a package from a **source distribution** (`sdist`, `.tar.gz`) via `setup.py` or a build backend. Pre-built **wheels** (`.whl`) do not run install-time code, which is why `pip install --only-binary=:all:` is a useful hardening flag when a wheel exists for your platform. The `conda`/`mamba` ecosystem has the same property in reverse: `post-link` scripts in a conda recipe run at install time.

Treat install time, not just run time, as a code-execution boundary. Practical steps:

- **Always install into an isolated environment** (`venv`, `uv venv`, `conda` env, devcontainer, or VM) rather than the system Python. This limits what install-time code can touch.
- **Do not install with elevated privileges.** Avoid `sudo pip install` and global `npm install -g` as root. A compromised post-install script then runs as root.
- **Do not install new packages while privileged credentials are loaded** in the same shell. Cloud keys, GitHub tokens, and SSH agents are all readable by an install-time script. Open a clean shell, install, then re-enter your working session.
- **Prefer wheels for Python**: `pip install --only-binary=:all: <pkg>` when a wheel exists for your platform. Wheels do not execute install-time code.
- **Disable lifecycle scripts on first install for Node**: `npm install --ignore-scripts`, then audit `package.json` and the new lock file before re-enabling.
- **Pin and hash-verify** what you install (`pip install --require-hashes`, `npm ci`, `uv sync --frozen`, `conda-lock install`). See the [checklist page](/security_practical) for per-tool commands.
- **Verify the package before you type the install command.** Confirm the name (typos and AI hallucinations get squatted), the source repository, and recent maintainer activity. A brand-new release of a previously stable package is worth a moment of suspicion.
- **Restrict outbound network from build/install jobs** in CI to your package registry only, when practical. Most install-time exfiltration needs a network call.
- **Use a vetted internal mirror** (Artifactory, Nexus, devpi, or a private conda channel) for organizational installs, so you control which versions are reachable.

## Notebooks, model weights, and other "data" that runs code

Several "data" formats common in scientific workflows are actually code:

- **Jupyter notebooks (`.ipynb`)**: opening a notebook is safe, but "Run All" on a notebook you downloaded is equivalent to running an unreviewed script. Notebook output cells also regularly contain leaked API responses, tokens, and PII &mdash; strip outputs before committing (see `nbstripout` on the checklist page).
- **Pickle and joblib (`.pkl`, `.joblib`)**: `pickle.load` executes arbitrary Python. Never unpickle data from an untrusted source.
- **PyTorch checkpoints (`.pt`, `.pth`)**: historically used pickle under the hood. Use `torch.load(..., weights_only=True)` on PyTorch &ge; 2.6 or prefer safer formats such as `safetensors`.
- **YAML**: `yaml.load` without a safe loader can instantiate arbitrary Python objects. Use `yaml.safe_load`.
- **HDF5, NetCDF, Parquet, NumPy `.npy`**: safer by design, but still large blobs from collaborators deserve a quick check of source and size.

If you would not run a random `.py` file from a collaborator without reading it, do not run their notebook or load their pickle without the same care.

---------------

Continue with **[Security checklist for daily development](/security_practical)**.
