---
title: "Using Roo Code with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

#### Roo Code Setup

Install the agentic [Roo Code Plugin](https://docs.roocode.com/) for VS Code.

Click on the kangaroo icon in the left sidebar.

**Best Setup with LBL-Hosted Models**

1. Go to "Settings" - 
2. Add a new setting "Planning"
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: lbl/cborg-deepthought
  - **Enable R1 Messages Format**
  - Context Window: 32768
  - Max Output Tokens: 16384
3. Add a new setting "Editor"
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: lbl/cborg-coder
  - Context Window: 32768
  - Max Output Tokens: 16384

**Economical Setup with Anthropic Claude**

1. Go to "Settings" - 
2. Add a new setting "Planning"
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: anthropic/claude-sonnet
  - Context Window: 65536 (up to 200000 but can increase cost)
  - Max Output Tokens: 16384
3. Add a new setting "Editor"
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: anthropic/claude-sonnet
  - Context Window: 65536
  - Max Output Tokens: 16384

**Select Default Model for Each Mode**

When selecting a mode, e.g. 'Code', choose the configuration 'Editor'.

For 'Architect', choose configuration 'Planning'.

Model configuration can be adjusted to optimize costs by selecting lower cost models for basic functions like editing, and reasoning or flagship models for 'high value' operations.

**Other Options**

For longer context up to 1 million tokens, try Gemini (Flash or Pro), or ChatGPT 4.1.

For "high effort" (and high cost) use OpenAI o3 for planning.


