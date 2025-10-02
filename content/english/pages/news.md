---
title: "News"
# meta title
meta_title: ""
# meta description
description: "Updates regarding the CBORG AI Portal"
# save as draft
draft: false
---

## Current Status

All systems are operational.

## Recent Updates

_Sept 29th, 2025_

- Updated Claude Sonnet to version 4.5

_Sept 26th, 2025_

- gpt-5-codex model is now available via API and with OpenAI Codex CLI
- On-prem inference of gpt-oss models is restored
- Adjusted system prompts for CBorg Coder and CBorg Deepthought in CBorg Chat
- Corrected a parameter misconfiguration of CBorg Coder causing suboptimal reasoning performance on CBorg Chat

_Sept 9th, 2025_

- Fixed bug in xAI model cost calculation not including reasoning tokens
- Fixed support for tool use on GPT-oss models
- Improved Claude Code documentation re: correct model names

_August 28th, 2025_

- Added xAI Grok 4-0709 and Grok Code Fast 1 to Chat and API

_August 24th, 2025_

- Added SciCode benchmarks
- Added gpt-oss-120b-high and gpt-oss-20b-high with reasoning_effort="high" config
- Addressed a configuration bug in Opus 4.1 that was causing reasoning effort to be ignored
- Moved xAI Grok 3 model endpoint to Azure Foundry

_August 17th, 2025_

- Added Llama 4 Scout and Maverick via AWS Bedrock
- Added gpt-oss-120b models via Azure, GCP and AWS
- Updated azure/deepseek-r1 to use azure/MSAI-DS-R1 (uncensored version of DeepSeek retrained by Microsoft AI)
- Migrated CBorg Chat and API to IT-IS Vmware for improved uptime

_August 7th, 2025_

- Fixed a bug in CBorg Coder that would cause premature response termination in long generations
- Chat GPT 5 is now available on CBorg Chat
- The GPT 5 family of models is now available on CBorg API (gpt-5, gpt-5-mini, gpt-5-nano)

_August 5, 2025_

- CBorg Coder and CBorg Deepthought replaced with GPT-OSS 120b (Reasoning: high).
- Claude Opus 4.1 available on chat and API

_July 25th, 2025_

- Gemini CLI is now supported by CBorg API

_July 24th, 2025_

- GPT 4.5 Preview has been removed due to API deprecation. Suggested replacement GPT 4.1, until GPT 5 is released in the coming months.

_July 14th, 2025_

- Improved stability for Anthropic Claude models.
- Added `-high` aliases for Anthropic, OpenAI and Gemini reasoning models (automatically engages "high" reasoning effort)
- Updated documentation on coding tools for Cline, Roo Code

_June 30th, 2025_

- Added system prompts to Claude and Gemini models on CBorg Chat

_June 29th, 2025_

- Claude Code is now supported with CBorg - updated documentation
- Updated documentation for OpenAI Codex CLI
- Reconfigured model name structure to support direct access to Anthropic Claude on Bedrock
- Reconfigured model name / alias structure to support direct access to Google Gemini models

_May 22nd, 2025_

- Claude 4.0 models are now available
- All Anthropic endpoints switched over to AWS Bedrock
- Agent Builder now available on CBorg Chat

_Apr 28th, 2025_

- Improve configuration for VS Code 'Continue' integration
- Fix autocomplete / FIM model for code completions
- Changed LBL-hosted CBorg Deepthought from Perplexity Debiased Deepseek R1-Llama to QwQ 32B

_Apr 21st, 2025_

- Enabled support for OpenAI Codex CLI to CBorg API Server
- Added ChatGPT 4.1 and OpenAI o3 models to chat and API

_Apr 19th, 2025_

- Auto-tool-calling enabled for LBL-hosted Llama 4

_Apr 18th, 2025_

- LBL-hosted Llama model upgraded to Llama 4 Scout
- Grok 3 Beta and Grok 3 Beta Mini are available on chat and API
- Google Flash 2.5 Preview and Pro 2.5 Preview now available on chat and API
- ChatGPT 4.1 Mini, ChatGPT 4.1 Nano and ChatGPT 4.5 Preview now available on chat and API
- Science IT and HPCS Support chatbot now available on CBorg Chat
- Stability and scaling improvements to API configuration

_Feb 28th, 2025_

- Claude 3.7 Sonnet and Claude 3.7 Sonnet with Extended Thinking are available on chat and API
- Google Flash Lite available on API - ideal for low latency applications
- Grok 2 is available on chat and API. Grok 3 support is not available yet.

_Feb 6th, 2025_

- Google Gemini models upgraded to Gemini Flash 2.0 and Gemini Pro 2.0

_Feb 4th, 2025_

- CBorg Vision model changed to Qwen 2-VL 72B - also available on API as lbl/qwen-vision

_Jan 31st, 2025_

- OpenAI o1-preview upgraded to o1 full release
- OpenAI o1 and o3-mini now available on CBorg Chat and API

_Jan 22nd, 2025_

- Upgrated CBorg Deepthought to use DeepSeekR1 Llama 70B Distilled - also available on API
- Upgraded CBorg Coder Base (fill-in-the-middle code completion) to Qwen Coder 32B Base.
- Enhanced CBorg Chat with vision capability by deploying merged Llama 70B 3.3 with Llama 90B Vision 3.2
- Adjusted model deployment configuration for improved GPU allocation in on-prem cluster

_Dec 13th, 2024_

- Underlying model for CBorg Chat is changed from Llama 3.1 405B to Llama 3.3 70B for increased speed and performance.
- Underlying model for CBorg Coder is changed from Llama 3.1 405B to Qwen Coder 32B
- Google Gemini Flash upgraded from 1.5 to new version 2.0 Experimental

_Nov 8th, 2024_

- Upgraded Claude Haiku to new 3.5 release. Updated pricing for API use.
- Fixed low constrast issue in splash screen image when dark mode enabled.

_Oct 31st, 2024_

- Upgraded CBorg Chat to Librechat v0.7.5
- Improved layout of login page on mobile devices
- Fixed icons and app name for CBorg Chat installable PWA

_Oct 25th, 2024_

- Claude Sonnet 3.5 upgraded to the newly released v2 model.
- Endpoint for Anthropic Claude models on CBorg Chat is changed to AWS Bedrock for improved contract terms.

_Oct 24th, 2024_

- Downtime for power systems upgrades has been postponed. New dates will be announced in the coming weeks.

_Oct 15th, 2024_

- OpenAI o1 Mini and o1 Preview are available on CBorg Chat via a "streaming mode" middleware adapter
- LBL-hosted fill-in-the-middle (FIM) code completion model fixed and changed to Starcoder 7B
- Fixed a bug with code actions for VSCode Continue plugin when using LBL-hosted CBorg Coder - Continue users should update their config.json.

_Oct 11th, 2024_

- o1-mini and o1-preview are available on the CBorg API service.
- Removed ChatGPT 3.5 from API and CBorg Chat

_Oct 4th, 2024_

- Added new CBorg Vision model based on Meta Llama 3.2 90B Vision.
- Integrated Wolfram|Alpha into CBorg Chat.
- Deployed new self-managed API Key Manager, enabling users to create and manage their own API keys.

_September 19th, 2024_

- Underlying model for CBorg Chat and CBorg Coder changed to Llama 3.1 405b (FP8). Added experimental
"CBorg Deepthought" model - based on Chain-of-Thought reasoning prompt. Fixed centering of text
in CBorg logo.

_September 9th, 2024_

- CBorg Vision model changed to Phi 3.5 with vision support - it can describe images and read text. VS Code 'Continue' support is now available in early beta for API users.

_August 26th, 2024_

- Lab-hosted models have been renamed with generic "CBorg" naming; underlying model has been replaced from Llama 3.1 to Mistral Large 2047 (licensed for non-commercial use). Added "Cborg Coder" (also based on Mistral Large with customized system message) and "Cborg Nano" (based on Microsoft Phi 3.5 - lightweight model for summarization and extraction tasks).

_August 24th, 2024_

- Google Gemini models are now available on the API service.

_August 6th, 2024_

- Low cost ChatGPT 4o-mini with regional deployment on Azure cloud. Implemented performance improvements to self-hosted chat models: Llama 3.1 and Command R+. New Lab-hosted embedding model `lbl/nomic-embed-text` now available.

_July 31st, 2024_

- The default temperature of models has been adjusted to 0.5. To customize the behavior of chat models please use a user preset.

_July 30th, 2024_

- CBORG Chat now supports RAG using CSV, TXT and PDF files.

_July 25th, 2024_

- Meta Llama 3 70B has been upgraded to Meta Llama 3.1 405B.

_July 24th, 2024_

- Access to Anthropic Claude through the API service is now working. ChatGPT-4o endpoint bandwidth was increased to accomodate user demand.

_July 2nd, 2024_

- Added a local API endpoint, https://api-local.cborg.lbl.gov which bypasses Cloudflare for local network clients.

_June 24th, 2024_

- Upgraded Claude 3.0 Sonnet to the latest Claude 3.5 Sonnet. Details: https://www.anthropic.com/news/claude-3-5-sonnet

_June 17th, 2024_

- Added LBNL-hosted embedding models e5-large-v2 and NV-Embed-v1, a large 4096-dimension embedding model with a leading position on the MTEB Leaderboard.

_June 13th, 2024_

- Added graceful failover to LBNL-hosted models in event of server offline
- Corrected incorrect configuration of cost-per-token setting in LBNL-hosted Command R+

_June 12th, 2024_

- LBNL-Hosted Llama-3 70B is now running on Nvidia H100 node for increased performance
- Custom chat icons have been provided for LBNL-hosted models

_June 7th, 2024_

- Removed support for ChatGPT 4 (legacy model), replaced by GPT-4o
- Removed support for Google Gemini 1.0 Pro, replaced by Gemini 1.5 Flash and Gemini 1.5 Pro
- Adjusted context window for LBNL-hosted Command R+ to 80K tokens per system memory constraints
- Adjusted maximum context length for commercial models to reasonable limits for chat use to control costs
- Improved model selection drop-down list with model descriptions

_June 6th, 2024_

- Added support for ChatGPT 4o
- Added support for Google Gemini 1.5 Flash and Google Gemini 1.5 Pro
- Fixed Anthropic Claude endpoints
- Added support for Anthropic Claude Opus

