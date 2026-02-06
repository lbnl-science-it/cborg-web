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
