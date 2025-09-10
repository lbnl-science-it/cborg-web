---
title: "Using Roo Code with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

#### 1. Install Roo Code

Install the [Roo Code Extension](https://docs.roocode.com/) for VS Code.

#### 2. Configure Provider

1. Open the **Settings** menu.
2. Go to **Providers**
3. Click **+** to create a new profile
4. Name the profile something appropriate, e.g. '**CBorg Coder**' (can be changed later)
5. For API Provider select **LiteLLM**
6. Set Base URL to **https://api.cborg.lbl.gov**
6. Add your CBORG_API_KEY to LiteLLM API Key
7. Click **Refresh Models**
8. Select the desired model

**Note:** With the LiteLLM provider, Roo Code will display accurate calculations of the cost of each operation and supports prompt caching for Anthropic models. You can also use "OpenAI Compatible" as the provider, but this will not display the per-API costs when using the extension.

For more information please consult the RooCode documentation: [Using LiteLLM with RooCode](https://docs.roocode.com/providers/litellm)

#### Advanced / Experimental Options

Advanced users may wish to configure multiple profiles for different tasks.

Enable "Power Steering" under Experimental options in the menu - this will use slightly more tokens but helps keep the model on-task (recommended for use with CBorg Coder)

#### Recommended Models

`lbl/cborg-coder`: Best free-to-use model (unlimited usage) - keeps your data on CBorg self-hosted model server. Fast speed.

`xai/grok-3-mini`: Very low cost model, with strong scientific coding capability.

`openai/o4-mini-high`: Good performance at a reasonable cost.

`google/gemini-pro-high`: Expensive model to use - reserve for maximum difficulty tasks (e.g. scientific coding)

`anthropic/claude-sonnet-high`: Expensive model to use - reserve for maximum difficulty tasks (e.g. scientific coding). Makes nice user interfaces and supports automated testing in RooCode via "computer use". Keep an eye on your costs!

#### Not Recommended Models

`anthropic/claude-opus`: Ultra-expensive, with almost no additional improvement in code quality

`anthropic/claude-haiku`: Significantly underperforms relative to other lightweight models

`openai/gpt-5`: Use of a reasoning model will improve performance

