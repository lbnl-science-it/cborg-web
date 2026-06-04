---
title: "Opencode with CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

[Opencode.AI](https://opencode.ai/) is a free open source CLI coding agent.

## Installation

To use the CBorg API, you must install Opencode from source to enable LiteLLM provider support.

> **As of 2026-04-22:** The official Opencode release does not yet support LiteLLM-style providers (required for the CBorg configuration below). Until [PR #14468](https://github.com/sst/opencode/pull/14468) is merged, you need to build from that branch:

{{< highlight bash >}}
git clone https://github.com/anomalyco/opencode.git /tmp/opencode-build \
  && cd /tmp/opencode-build \
  && git fetch origin pull/14468/head:pr-14468 \
  && git checkout pr-14468 \
  && bun install \
  && cd packages/opencode \
  && bun run build --single \
  && ARCH="$(uname -m)" \
  && case "$ARCH" in \
       x86_64)  OPENCODE_ARCH="x64" ;; \
       aarch64) OPENCODE_ARCH="arm64" ;; \
       *) echo "Unsupported arch: $ARCH" && exit 1 ;; \
     esac \
  && cp "dist/opencode-linux-${OPENCODE_ARCH}/bin/opencode" /usr/local/bin/opencode \
  && chmod +x /usr/local/bin/opencode \
  && rm -rf /tmp/opencode-build
{{< /highlight >}}

> **Note:** This requires [Bun](https://bun.sh/) to be installed. Once PR #14468 is merged into the official Opencode release, you will be able to install Opencode normally and use the configuration below directly.

## Configuration

Save your CBorg API key to the environment and configure the CBorg API provider in `~/.config/opencode/opencode.json`:

{{< highlight bash >}}
{
  "$schema": "https://opencode.ai/config.json",
  "enabled_providers": ["litellm"],
  "model": "litellm/cborg-coder",
  "provider": {
    "litellm": {
      "name": "CBorg API",
      "options": {
        "baseURL": "https://api.cborg.lbl.gov/v1",
        "apiKey": "{env:CBORG_API_KEY}"
      },
      "models": {
        "cborg-coder": {
          "name": "CBorg Coder (Free)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "gemini-flash": {
          "name": "Gemini Flash ($)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "gpt-codex": {
          "name": "GPT Codex ($$)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "claude-sonnet": {
          "name": "Claude Sonnet ($$)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "claude-opus": {
          "name": "Claude Opus ($$$)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "gemini-pro-high": {
          "name": "Gemini Pro ($$$)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        },
        "claude-opus-high": {
          "name": "Claude Opus High ($$$$)",
          "textVerbosity": "low",
          "reasoningSummary": "off"
        }
      }
    }
  },
  "mcp": {
    "context7": {
      "type": "remote",
      "url": "https://api.cborg.lbl.gov/mcp/context7",
      "enabled": true,
      "headers": {
        "Authorization": "Bearer {env:CBORG_API_KEY}"
      }
    }
  },
  "tools": {
    "*": true
  }
}
{{< /highlight >}}

Other models can be also used by adding similar entries under "models".
