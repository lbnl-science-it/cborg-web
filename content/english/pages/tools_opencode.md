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

Save your CBorg API key to the environment and add the following to ~/.config/opencode/opencode.json

{{< highlight bash >}} 
{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "cborg": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "CBorg API",
      "options": {
        "baseURL": "https://api.cborg.lbl.gov",
        "apiKey": "{env:CBORG_API_KEY}"
      },
      "models": {
        "lbl/cborg-coder": {
          "id": "lbl/cborg-coder",
          "name": "CBorg Coder",
          "reasoning": true,
          "tool_call": true,
          "limit": { 
              "context": 131072,
              "output": 131072
          },
        }
      }
    }
  },
  "model": "cborg/lbl/cborg-coder"
}
{{< /highlight >}}

Other models can be also used by adding similar entries under "models".

## Building Opencode with LiteLLM Provider Support

> **As of 2026-04-22:** The official Opencode release does not yet support LiteLLM-style providers (required for the CBorg configuration above). Until [PR #14468](https://github.com/sst/opencode/pull/14468) is merged, you need to build from that branch:

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

> **Note:** This requires [Bun](https://bun.sh/) to be installed. Once PR #14468 is merged into the official Opencode release, you will be able to install Opencode normally and use the configuration above directly.
