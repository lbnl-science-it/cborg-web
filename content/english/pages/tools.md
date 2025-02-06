---
title: "AI Tools"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

# CBorg-Powered AI Tools

{{< accordion "CBorg Chat" >}}

Use ChatGPT, Gemini, Anthropic, Llama3 and more.

{{< button "CBorg Chat" "https://chat.cborg.lbl.gov" >}}

{{< /accordion >}}

{{< accordion "CBorg API Service" >}}

Use CBorg LLMs from your own app or build your own LLM-powered programs.

{{< button "Request a CBorg API Key" "/api_request" >}}

- [API Examples](/api_examples)
- [API_FAQ](/api_faq)
- [API Swagger Documentation](https://api.cborg.lbl.gov/)

{{< /accordion >}}

{{< accordion "CBorg Client Proxy" >}}

Reverse proxy service that streamlines the connection between your local machine and the CBorg API server.

**Features**:

- **Automatic Key Injection:** Inject API keys automatically from environment variable - no need to save keys in each application
- **Automatic Endpoint Routing on LBL-Net:** Detects when client is connected to LBL-net and automatically switch to locally-routed endpoint, reducing latency.
- **Usage Monitoring:** Periodically checks and reports on current key budget utilization.

{{< button "CBorg Client GitHub Project" "https://github.com/lbnl-science-it/cborg-client" >}}

{{< /accordion >}}

{{< accordion "VS Code Continue Plugin" >}}

Use the popular [VS Code Continue Plugin](https://www.continue.dev/) with the CBorg API Server.

Two options:
1. **Easy setup:** provides chat and editor functions
2. **Advanced setup:** full functionality with tab-autocompletion and indexing - requires CBorg Client Proxy

{{< button "VS Code Continue Support on CBorg Client GitHub Project" "https://github.com/lbnl-science-it/cborg-client" >}}

{{< /accordion >}}

{{< accordion "Cursor AI Code Editor" >}}

Cursor is an AI-powered code editor, based on a fork of VS Code. Cursor requires less
setup to configure compared to VS Code + Continue, but is dependent on a Cursor Pro 
subscription for full functionality including "Composer" and "Fill-in-the middle" code
completions.

Cursor can be used with the CBorg API for chat, inline code generation and editing.

## Setup Instructions

Go to "Models" in the Cursor Settings:

#### Step 1: Add CBorg Model Names

1. **Disable Default Models**: Disable all of the default model names
2. **Add CBorg Model Names**: Add and enable at least one of the following models:

- lbl/cborg-coder:latest
- openai/chatgpt:latest
- google/gemini:latest
- anthropic/claude:latest

#### Step 2: Set API Key and Base URL

1. **OpenAI API Key:** sk-... (paste your CBorg API Key here)
2. **Override OpenAI Base URL:** https://api.cborg.lbl.gov

*If using the CBorg Client, set API Key to "none" and OpenAI Base URL to http://127.0.0.1:8001*

{{< /accordion >}}

{{< accordion "Aider" >}}

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

# e.g. using Claude Sonnet 3.5 via CBorg (best results)
aider --model openai/anthropic/claude-sonnet

# e.g. using OpenAI ChatGPT 4o via CBorg
aider --model openai/openai/gpt-4o
{{< /highlight >}}

{{< /accordion >}}

{{< accordion "Omni-Engineer" >}}

CLI-based coding assistant capable of editing files in-place using simple commands. Best results with Claude Sonnet, but you can also use the on-prem CBorg Coder model.

{{< button "Omni Engineer-LBL GitHub Project (LBL Forked Version)" "https://github.com/lbnl-science-it/omni-engineer-lbl/tree/utilities" >}}

Make sure to check out the 'utilities' branch, not "main".

{{< highlight bash >}}
git checkout utilities
pip install -r requirements.txt
python ./main.py
{{< /highlight >}}

CBORG_API_KEY environment variable must be defined before launching the tool. 

{{< /accordion >}}

### Coming Soon / Work In Progress

- **PDF Reader:** Convert PDFs to Markdown and LaTeX for ingestion into LLM
- **LabGPT:** Chatbot grounded with Berkeley Lab internal knowledgebase.
- **Web Scraping Demo:** Automatically scrape news articles into JSON
- **GraphRAG UI:** Convert documents into knowledge base for advanced RAG queries
- **Stable Diffusion / FLUX:** Image generation tool

