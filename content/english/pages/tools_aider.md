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

# e.g. using CBorg Coder (LBL-hosted coding model)
aider --model openai/lbl/cborg-coder:latest

# e.g. using Claude Sonnet 3.7 via CBorg (best results)
aider --model openai/anthropic/claude-sonnet

# e.g. using OpenAI ChatGPT 4o via CBorg
aider --model openai/openai/gpt-4o
{{< /highlight >}}

For best results using only open-source models, try the following combination which uses a reasoning model for the 'architect' and a coding model for the 'editor':

{{< highlight "bash" >}}
aider --model lbl/cborg-deepthought --editor-model lbl/cborg-coder --editor-edit-format editor-whole
{{< /highlight >}}

