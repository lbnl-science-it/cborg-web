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
Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time. Please use models responsibly keeping in mind cost burdens associated with each model.
{{< /notice >}}


# Available Models Summary

| Model Location  | Model Creator  | Model Name         | Context Length | Cost  | 
| --------------- | :------------: | :--------:         | :-----:        | :---: | 
| Azure Cloud     | OpenAI         | ChatGPT 3.5        | 16k            | $    | 
| Azure Cloud     | OpenAI         | ChatGPT 4 Turbo    | 128k           | $$$ | 
| Google Cloud    | Google         | Gemini 1.0 Pro     | 128k           | $$   |
| AWS Cloud       | Anthropic      | Claude Sonnet      | 200k           | $$   |
| AWS Cloud       | Anthropic      | Claude Haiku       | 200k           | $     |
| Berkeley Lab    | Meta           | LLaMA 3 70B        | 8k             | Free  |
| Berkeley Lab    | Cohere         | Command R+ 104B    | 128k           | Free  |
| Berkeley Lab    | IBM            | Granite Code 34B   | 16k            | Free  |
| Berkeley Lab    | Stability AI   | Stable Diffusion   | 7k             | Free  |

# Commercial Model Details

{{< accordion "OpenAI ChatGPT 3.5 Turbo 0125" >}}

Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to OpenAI/Azure commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 16k Tokens
- **Cost per 1M Tokens (Input)**: $0.50 
- **Cost per 1M Tokens (Output)**: $1.50
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "OpenAI ChatGPT 4 Turbo" >}}

Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to OpenAI/Azure commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 128k Tokens
- **Cost per 1M Tokens (Input)**: $10.00 
- **Cost per 1M Tokens (Output)**: $30.00
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "Google Gemini Pro 1.0" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 128k Tokens
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $1.50
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Anthropic Claude Haiku" >}}

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for text summarization.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.25
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}

{{< accordion "Anthropic Claude Sonnet" >}}

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}

# LBL-Hosted Open Model Details

The IT Division's Science IT group provides access to open models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBL-Hosted models are free-to-use and are suitable for processing large amounts of data.

{{< accordion "Meta LLaMA 3" >}}

LLaMA 3 is the latest version of the open source LLaMA model from Meta. LLaMA is friendly and conversational, and can perform reasonably complex text analysis such as data extraction into JSON.

- **Endpoint Location**: Berkeley Lab - IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 8k Tokens
- **Cost**: Free to use 
- **Terms of Service**: [Meta LLaMA Acceptable Use Policy](https://llama.meta.com/llama3/use-policy/)

{{< /accordion >}}

{{< accordion "Cohere Command R+" >}}

Cohere Command R+ has a neutral voice that is well suited to technical applications. The extremely long context window (125K tokens) makes it a preferred choice for retreival augmented generation (RAG).

- **Endpoint Location**: Berkeley Lab - IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Multi-Tool Use, RAG
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 125k Tokens
- **Cost**: Free to use 
- **Terms of Service**: [Cohere For AI Acceptable Use Policy](https://docs.cohere.com/docs/c4ai-acceptable-use-policy)

{{< /accordion >}}

# Coming Soon

- **IBM Granite Code 34B:** Code Completion Assistant with VS Code integration
- **Stability.AI Stable Diffusion:** Image generation model

