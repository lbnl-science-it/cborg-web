---
title: "Using Cline with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

#### VS Code Cline Plugin

Use the popular [VS Code Cline Plugin](https://cline.bot/) with the CBorg API Server. Cline supports powerful agentic workflows within VS Code.

**Best Setup with LBL-Hosted Models**

1. Go to "Settings" - 
2. Enable 'Use Different Models for Plan and Act Modes'
3. For the Plan Mode:
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: lbl/cborg-deepthought
  - Under Model Configuration: **Enable R1 Messages Format**
4. For the Act Mode:
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: lbl/cborg-coder
5. For both under Model Configuration:
  - Context Window: 32768
  - Max Output Tokens: 16384

**Economical Setup with Anthropic Claude**

1. Go to "Settings" - 
2. Enable 'Use Different Models for Plan and Act Modes'
3. For the Plan Mode:
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: anthropic/claude-sonnet
4. For the Act Mode:
  - API Provider: OpenAI Compatible
  - Base URL: https://api.cborg.lbl.gov
  - API Key: Your CBorg API key
  - Model ID: anthropic/claude-haiku
5. For both under Model Configuration:
  - Context Window: 65536 (can be up to 200000)
  - Max Output Tokens: 32768

**Other Options**

For longer context up to 1 million tokens, try Gemini (Flash or Pro), or ChatGPT 4.1.

For "high effort" (and high cost) use OpenAI o3 for planning.


