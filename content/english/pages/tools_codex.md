---
title: "Using CBorg with OpenAI Codex CLI"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### OpenAI Codex CLI

Codex CLI expects the API key and Base URL to be defined in OPENAI_API_KEY and OPENAI_BASE_URL.

{{< highlight bash >}}
# Install OpenAI Codex
npm i -g @openai/codex

# Set Base URL to CBorg API Server
export OPENAI_BASE_URL=https://api.cborg.lbl.gov

# Set OPENAI_API_KEY to your CBorg API Key 
export OPENAI_API_KEY=$CBORG_API_KEY

# Now you can use Codex with any CBorg model, e.g.:
codex --model lbl/cborg-coder
{{< / highlight >}}

For more information see [OpenAI Codex Github](https://github.com/openai/codex)
