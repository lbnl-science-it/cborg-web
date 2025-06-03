---
title: "Cursor AI Editor"
# meta title
meta_title: ""
# meta description
# description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### Cursor AI Code Editor

Cursor is an AI-powered code editor, based on a fork of VS Code.

**Limitations:** Cursor only provides a very rudimentary configuration for 3rd party model providers such as CBorg. CBorg models can be used in 'Ask' mode and 'Manual' mode, but do not work in 'Agent' mode. Cursor does not provide any way to indicate that models support agentic tool calling. It is recommended to consider a different tool such as VS Code Cline or VS Code Roo Code, or a CLI-based coding assistant such as OpenAI Codex CLI, Omni-Engineer, Claude Code, etc.

##### Setup Instructions

**Step 1:** Add CBorg Model Names

Go to "Models" in the Cursor Settings:
 
1. **Disable Default Models**: Disable all of the default model names
2. **Add CBorg Model Names**: Add and enable at least one of the following models:

- lbl/cborg-coder:latest
- openai/chatgpt:latest
- google/gemini:latest
- anthropic/claude:latest

**Step 2:** Set API Key and Base URL

1. **OpenAI API Key:** sk-... (paste your CBorg API Key here)
2. **Override OpenAI Base URL:** https://api.cborg.lbl.gov


