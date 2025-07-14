---
title: "Using Cline with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

{{< notice "note" >}}
Many users are using the [RooCode](/tools_roo) extension (a fork of the Cline project). Roo has slightly better integration with the CBorg API server and more extensive options for profile configuration compared to Cline (as of July 2025).
{{< /notice >}}

#### 1. Install Cline Extension

Install the [Cline Extension](https://cline.bot/) for VS Code.

#### 2. Configure Provider

1. Open the **Settings** menu.
2. Go to **API Settings**
3. For the API Privoder select **LiteLLM**
4. Set Base URL to **https://api.cborg.lbl.gov**
5. Add your CBORG_API_KEY to API Key
6. Type in the desired model ID name
7. Select appropriate configuration options

**Note:** With the LiteLLM provider, Cline will display accurate calculations of the cost of each operation, and supports prompt caching for Anthropic models.
Do not use "OpenAI Compatible" as the provider, as this will result in a reduced feature set.

Advanced users may wish to configure multiple profiles for Plan and Act mode.

#### Example Configuration with LBL CBorg Coder

Use this configuration for free unlimited usage with CBorg Coder

1. Set model name `lbl/cborg-coder`
2. Disable prompt caching
3. Disable extended thinking
4. Open Model Configuration
5. Disable Supports Images
6. Context Window Size 131072
7. Max Output Tokens: -1
8. Temperature: 0
9. Disable 'Use different models for plan and act mode'

#### Example Configuration with Anthropic

1. Set Plan model to `anthropic/claude-sonnet-high`
2. Set Act model to `anthropic/claude-sonnet`
3. Enable Prompt Caching, Enable Images
4. Context Window Size 200000
5. Max Output Tokens: -1
6. Temperature: 0.15
7. Enable 'Use different models for plan and act mode'

#### Example Configuration with OpenAI

1. Set Plan model to `openai/o3-high`
2. Set Act model to `openai/o4-mini-high`
3. Enable Prompt Caching, Enable Images
4. Context Window Size 128000
5. Max Output Tokens: -1
6. Temperature: 0.15
7. Enable 'Use different models for plan and act mode'


#### Model Configuration Notes

`lbl/cborg-coder`: Best free-to-use model (unlimited usage) - keeps your data on CBorg self-hosted model server. Medium speed.

`anthropic/claude-haiku`: Very fast, low cost. Suggested use: adding documentation, simple tasks.

`anthropic/claude-sonnet`: Strong performance for every day use, reasonable cost. Also supports computer use. Fastest.

`anthropic/claude-sonnet-high`: Claude Sonnet with reasoning enabled - can improve performance, but also increases cost.

`anthropic/claude-opus`: Very expensive and probably not needed. Slow.

`anthropic/claude-opus-high`: Reserve for only the most challenging tasks where other models fail. Very slow.

`openai/o4-mini`: Excellent performance at a very low cost. A bit slower than non-reasoning models.

`openai/o3-high`: Best-in-class performance for challenging tasks (refactoring, math, etc). More expensive but still reasonable. Slow.

`google/gemini-pro`: Solid performance, moderate cost.

`google/gemini-pro-high`: Gemini with reasoning enabled - higher cost and slower.



