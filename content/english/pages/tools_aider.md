---
title: "AI Tools"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### Aider

CLI-based coding agent that can edit code in a local git repo.

{{< button "Aider with OpenAI-compatible API" "https://aider.chat/docs/llms/openai-compat.html" >}}

{{< highlight bash >}}
python -m pip install -U aider-chat

# Mac/Linux:
export OPENAI_API_BASE=https://api.cborg.lbl.gov
export OPENAI_API_KEY=(your CBORG_API_KEY)
# ... restart shell after adding these to ~.bashrc

# Windows:
setx OPENAI_API_BASE https://api.cborg.lbl.gov
setx OPENAI_API_KEY (your CBORG_API_KEY)
# ... restart shell after setx commands

# Prefix the model name with openai/

# e.g. using Claude Sonnet 4.0
aider --model openai/anthropic/claude-sonnet

# e.g. using OpenAI o4-mini with high reasoning effort
aider --model openai/openai/o4-mini-high
{{< /highlight >}}

For best results using only free LBL-hosted models use the following:

{{< highlight "bash" >}}
aider --model openai/lbl/cborg-coder --edit-format whole
{{< /highlight >}}

The --edit-format whole produces fewer errors compared to diff format.
