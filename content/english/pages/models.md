---
title: "AI Models"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI models available through the CBORG AI Portal"
# save as draft
draft: false
---

{{< notice "note" >}}
Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time.
{{< /notice >}}

## Available Models Summary

| Model Location  | Model Creator  | Model Name         | Context Length | Vision | Cost  | 
| --------------- | :------------: | :--------:         | :-----:        | :---:  | :---: | 
| Berkeley Lab    | Meta           | LLaMA 3 70B        | 8K             | N      | Free  |
| Berkeley Lab    | Cohere         | Command R+ 104B    | 128K           | N      | Free  |
| Azure Cloud     | OpenAI         | ChatGPT 3.5        | 16K            | N      | $     | 
| Azure Cloud     | OpenAI         | ChatGPT 4          | 128K           | Y      | $$$   | 
| Azure Cloud     | OpenAI         | ChatGPT 4-Omni     | 128K           | Y      | $$    | 
| Google Cloud    | Google         | Gemini 1.0 Pro     | 128K           | N      | $     |
| Google Cloud    | Google         | Gemini 1.5 Flash   | 1.0M           | Y      | $$    |
| Google Cloud    | Google         | Gemini 1.5 Pro     | 1.0M           | Y      | $$$   |
| AWS Cloud       | Anthropic      | Claude Opus        | 200k           | Y      | $$$   |
| AWS Cloud       | Anthropic      | Claude Sonnet      | 200k           | Y      | $$    |
| AWS Cloud       | Anthropic      | Claude Haiku       | 200k           | Y      | $     |

### LBL-Hosted Models

The IT Division's Science IT group provides access to open models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBL-Hosted models are free-to-use.

{{< accordion "LBL/Meta Llama 3" >}}

Llama 3 is the latest version of the open source LLM from Meta. Llama is friendly and conversational, with good reasoning capabilities approximately equivalent to ChatGPT 3.5.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 8K Tokens
- **Cost**: Free to use 
- **API Model Name**: `lbl/llama-3`
- **Terms of Service**: [Meta LLaMA Acceptable Use Policy](https://llama.meta.com/llama3/use-policy/)

{{< /accordion >}}

{{< accordion "LBL/Cohere Command R+" >}}

Cohere Command R+ has a neutral voice that is well suited to technical applications. The 125K token context window is the longest of any open model, which is useful for text summarization and RAG applications with long documents. R+ also supports tool use.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Multi-Tool Use, RAG
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 125K Tokens
- **Cost**: Free to use 
- **API Model Name**: `lbl/command-r-plus`
- **Terms of Service**: [Cohere For AI Acceptable Use Policy](https://docs.cohere.com/docs/c4ai-acceptable-use-policy)

{{< /accordion >}}


### Commercial Models

Commercial models are hosted in commercial cloud providers. Costs for using these models are paid for by the IT Division. Please select the appropriate model for your application, keeping in mind the cost burdens associated with each. Using these models will cause your data to be shared with cloud providers in accordance with their terms of service. For detailed terms of service of each provider, see the model details below.

{{< accordion "OpenAI ChatGPT 3.5 Turbo" >}}

Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to OpenAI/Azure commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 16K Tokens
- **Cost per 1M Tokens (Input)**: $0.50 
- **Cost per 1M Tokens (Output)**: $1.50
- **API Model Name**: `openai/gpt-3.5-turbo`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "OpenAI ChatGPT 4 omni" >}}

Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to OpenAI/Azure commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost per 1M Tokens (Input)**: $15.00 
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `openai/gpt-4o`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "OpenAI ChatGPT 4" >}}

Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to OpenAI/Azure commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost per 1M Tokens (Input)**: $10.00 
- **Cost per 1M Tokens (Output)**: $30.00
- **API Model Name**: `openai/gpt-4`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}


{{< accordion "Google Gemini 1.0 Pro" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 128K Tokens
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $1.50
- **API Model Name**: `google/gemini-1.0-pro-latest`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Google Gemini 1.5 Flash" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 1.0M Tokens
- **Cost per 1M Tokens (Input)**: $0.35
- **Cost per 1M Tokens (Output)**: $0.70
- **API Model Name**: `google/gemini-1.5-flash-latest`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Google Gemini 1.5 Pro" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 1.0M Tokens
- **Cost per 1M Tokens (Input)**: $3.50
- **Cost per 1M Tokens (Output)**: $7.00
- **API Model Name**: `google/gemini-1.5-pro-latest`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Anthropic Claude Opus" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00
- **API Model Name**: `anthropic/claude-opus-latest`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}


{{< accordion "Anthropic Claude Sonnet" >}}

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `anthropic/claude-sonnet-latest`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}


{{< accordion "Anthropic Claude Haiku" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for short text summarization.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.25
- **API Model Name**: `anthropic/claude-haiku-latest`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}
