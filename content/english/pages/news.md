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

All services are operational. Occasional service interruptions may occur as we adjust system configuration.

Lab-hosted systems will be offline during the week of Oct 14th through 19th during upgrades to the cooling and power systems in Building 50.

## Recent Updates

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

