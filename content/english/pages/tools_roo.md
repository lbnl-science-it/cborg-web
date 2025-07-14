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
4. Name the profile something appropriate, e.g. '**CBorg Claude Sonnet**' (can be changed later)
5. For API Provider select **LiteLLM**
6. Set Base URL to **https://api.cborg.lbl.gov**
6. Add your CBORG_API_KEY to LiteLLM API Key
7. Click **Refresh Models**
8. Select the desired model

**Note:** With the LiteLLM provider, Roo Code will display accurate calculations of the cost of each operation and supports prompt caching for Anthropic models. 
Do not use "OpenAI Compatible" as the provider, as this will result in a reduced feature set.

For more information please consult the RooCode documentation: [Using LiteLLM with RooCode](https://docs.roocode.com/providers/litellm)

#### Advanced / Experimental Options

Advanced users may wish to configure multiple profiles for different tasks.

Enable "Power Steering" under Experimental options in the menu - this will use slightly more tokens but helps keep the model on-task (strongly recommended for use with CBorg Coder)

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


