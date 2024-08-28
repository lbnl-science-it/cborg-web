---
title: "AI Models"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI models available through the CBORG AI Portal"
# save as draft
draft: false
---

## Available Models Summary

### Generative AI Models

| Model Endpoint Location  | Model Creator  | Model Name         | Context Length* | Vision  | Cost**  | 
| ---------------          | :------------: | :--------:         | :-----:         | :---:   | :---: | 
| LBL IT Division          | Mistral        | Mistral Large 2    | 128K            | N       | Free  |
| LBL IT Division          | Mistral        | Mistral Large 2    | 128K            | N       | Free  |
| LBL IT Division          | Microsoft      | Phi 3 Mini         | 128K            | N       | Free  |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 3.5        | 16K             | N       | $$    | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4o-Mini    | 128K            | Y       | $     | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4-Omni     | 128K            | Y       | $$$   | 
| Google Cloud             | Google         | Gemini 1.5 Flash   | 1.0M            | Y       | $     |
| Google Cloud             | Google         | Gemini 1.5 Pro     | 1.0M            | Y       | $$    |
| AWS Cloud                | Anthropic      | Claude 3.0 Haiku   | 200k            | Y       | $     |
| AWS Cloud                | Anthropic      | Claude 3.5 Sonnet  | 200k            | Y       | $$    |
| AWS Cloud                | Anthropic      | Claude 3.0 Opus    | 200k            | Y       | $$$   |

### Vector Embedding Models

| Model Endpoint Location  | Model Creator      | Model Name  | Max Tokens | Embedding Dimensions | Cost**  | 
| ---------------          | :------------:     | :--------:  | :-----:    | :---:     | :---: | 
| LBNL IT Division         | Nomic.AI           | nomic-embed-text | 8192  | 768       | Free  |
| LBNL IT Division         | Microsoft Research | e5-large-v2      | 512   | 1024      | Free  |
| LBNL IT Division         | NVidia             | NV-Embed-v1      | 8192  | 4096      | Free  |

{{< notice "note" >}}
** Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time.
{{< /notice >}}

{{< notice "note" >}}
* Context window sizes for commercially-hosted Generative AI models are reduced in CBORG Chat to limit excessive usage. To make use of the full-length of context windows please request an API key or engage with Science IT Consulting to discuss using cloud services with a PID recharge.
{{< /notice >}}

### LBL-Hosted Open Models

The IT Division's Science IT group provides access to open-weight models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBL-Hosted models are free-to-use.

These models are licensed for non-commercial research use.

{{< accordion "CBorg Chat" >}}

- **Endpoint Location**: LBNL IT Division Data Center
- **Underlying AI Model**: Mistral Large 2407, Temperature = 0.5
- **Use Cases**: Chat, Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost**: Free to use
- **Alias Model Name**: `lbl/cborg-chat:latest`
- **Base Model Name**: `lbl/mistral-large`
- **Model Information**: [Mistral Large 2](https://mistral.ai/news/mistral-large-2407/)
- **Terms of Service**: [Mistral Research License](https://mistral.ai/licenses/MRL-0.1.md)

{{< /accordion >}}

{{< accordion "CBorg Coder" >}}

- **Endpoint Location**: LBNL IT Division Data Center
- **Underlying AI Model**: Mistral Large 2407 with custom system prompt, Temperature = 0.0
- **Use Cases**: Coding Assistant
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost**: Free to use
- **Alias Model Name**: `lbl/cborg-coder:latest`
- **Base Model Name**: `lbl/mistral-large`
- **Model Information**: [Mistral Large 2](https://mistral.ai/news/mistral-large-2407/)
- **Terms of Service**: [Mistral Research License](https://mistral.ai/licenses/MRL-0.1.md)

{{< /accordion >}}

{{< accordion "CBorg Nano" >}}

- **Endpoint Location**: LBNL IT Division Data Center
- **Underlying AI Model**: Microsoft Phi 3.5 Mini, Temperature = 0.0
- **Use Cases**: Summarization and Data Extraction
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens
- **Cost**: Free to use
- **Alias Model Name**: `lbl/cborg-nano:latest`
- **Base Model Name**: `lbl/phi`
- **Model Information**: [Phi Open Models](https://huggingface.co/microsoft/Phi-3.5-mini-instruct)
- **Terms of Service**: [MIT License](https://huggingface.co/microsoft/Phi-3.5-mini-instruct/blob/main/LICENSE)

{{< /accordion >}}

{{< accordion "nomic-embed-text" >}}

A high-performing open embedding model with a large token context window. nomic-embed-text is popular for use with self-hosted ollama installations. This provides a hosted endpoint with the same model.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Query and Passage Encoding
- **Max Tokens**: 8192
- **Embedding Dimensions**: 768
- **Cost**: Free to use
- **API Model Name**: `lbl/nomic-embed-text`
- **Model Information**: [Nomic.AI](https://www.nomic.ai/blog/posts/nomic-embed-text-v1)

{{< /accordion >}}

{{< accordion "e5-large-v2" >}}

**CURRENTLY OFFLINE - WILL BE RESTORED SOON**

e5-large-v2 is based on research originating from Microsoft Research, as described in Text Embeddings by Weakly-Supervised Contrastive Pre-training. Liang Wang, Nan Yang, Xiaolong Huang, Binxing Jiao, Linjun Yang, Daxin Jiang, Rangan Majumder, Furu Wei, arXiv 2022.

e5-large-v2 is a popular embedding model for vector search and retreival augmented generation, but is a small embedding model by current standards.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Query and Passage Encoding
- **Max Tokens**: 512
- **Embedding Dimensions**: 1024
- **Cost**: Free to use
- **API Model Name**: `lbl/e5-large-v2`
- **Model Card**: [HuggingFace intfloat/e5-large-v2](https://huggingface.co/intfloat/e5-large-v2)

{{< /accordion >}}

{{< accordion "NV-Embed-v1" >}}

**CURRENTLY OFFLINE - WILL BE RESTORED SOON**

NV-Embed-v1

NV-Embed-v1 is a leading embedding model created by Nvidia, ranked No. 1 on the Massive Text Embedding Benchmark (MTEB benchmark) as of May 24, 2024. NV-Embed-v1 is licensed for non-commercial use only.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Instructed Query and Passage Encoding
- **Max Tokens**: 8192
- **Embedding Dimensions**: 4096
- **Cost**: Free to use
- **API Model Name**: `lbl/nv-embed-v1`
- **Notes**: For non-commercial use only.
- **Model Card**: [HuggingFace nvidia/NV-Embed-v1](https://huggingface.co/nvidia/NV-Embed-v1)

{{< /accordion >}}


### Commercial Models

Commercial models are hosted in commercial cloud providers. Costs for using these models are paid for by the IT Division. Please select the appropriate model for your application, keeping in mind the cost burdens associated with each. Using these models will cause your data to be shared with cloud providers in accordance with their terms of service. For detailed terms of service of each provider, see the model details below.

**Model Aliases**

To simplify application development, alias model names are provided that point to the recommended
version of each model provider, as follows:


| Alias Name                   | Base Model                 |
| ---------------------------  | :---------:                |
| `/openai/chatgpt:latest`     | `/openai/gpt-4o`           | 
| `/anthropic/claude:latest`   | `/anthropic/claude-sonnet` | 
| `/google/gemini:latest`      | `google/gemini-1.5-pro`    | 


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

{{< accordion "OpenAI ChatGPT 4o Mini" >}}

ChatGPT-4o-Mini is the latest cost-efficient version ChatGPT from OpenAI. It is faster and lower cost compared to the GPT-4o model, and less than half the cost of ChatGPT 3.5. In addition, 4o-Mini supports a long context window and is multi-modal with vision support. Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to the Azure + OpenAI commercial terms of service. GPT 4o-Mini is accessed through the regional deployment based in in the East US Azure region.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 128K Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.165 
- **Cost per 1M Tokens (Output)**: $0.66
- **API Model Name**: `openai/gpt-4o-mini`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "OpenAI ChatGPT 4 Omni" >}}

ChatGPT-4o is the latest version of ChatGPT from OpenAI. It is faster and lower cost compared to the legacy GPT-4 model. Note: We use ChatGPT through Microsoft Azure Cloud AI Services, subject to the Azure + OpenAI commercial terms of service.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 128K Tokens (Note: Limited to 8K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $5.00 
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `openai/gpt-4o`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

{{< /accordion >}}

{{< accordion "Google Gemini 1.5 Flash" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 1.0M Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.35
- **Cost per 1M Tokens (Output)**: $0.70
- **API Model Name**: `google/gemini-1.5-flash`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Google Gemini 1.5 Pro" >}}

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: No
- **Context Window**: 1.0M Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.50
- **Cost per 1M Tokens (Output)**: $7.00
- **API Model Name**: `google/gemini-1.5-pro`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Anthropic Claude 3.0 Haiku" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for short text summarization.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 64K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.25
- **API Model Name**: `anthropic/claude-haiku`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}

{{< accordion "Anthropic Claude 3.5 Sonnet" >}}

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The 3.5 Sonnet is the latest version of Claude, outperforming 3.0 Opus with lower cost and faster inference speed.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `anthropic/claude-sonnet`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}


{{< accordion "Anthropic Claude 3.0 Opus" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 4096 in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00
- **API Model Name**: `anthropic/claude-opus`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}

### Frequently Asked Questions

#### 1. **What is the role of context length?**

The context length is a measure of the approximate number of words that a model can process as inputs. Some models support extremely long context lengths, such as Command R+ and ChatGPT 4-Omni (128K tokens), the Anthropic Claude models (200K) and Google Gemini 1.5 (1.0M Tokens). For a typical book with 300 words per page, the correspondence between pages and tokens is approximately as follows:

| Context Length | Pages of Text  | Model Support*       | 
| :------------: | :------------: | :-----------:        |
| 1.0M           | 2000           | Google Gemini 1.5    |
| 200K           | 400            | Anthropic Claude     |
| 128K           | 250            | ChatGPT 4, Mistral Large, Phi 3.5 |
| 64K            | 128            |                      |
| 32K            | 64             |                      |
| 16K            | 32             | ChatGPT 3.5          |
| 8K             | 16             | Llama 3 70B          |
| 4K             | 8              |                      |

When chatting with a model, your entire chat history of the session is fed into the context window with every message sent. Therefore, as you send more messages the context length will increase. Over time this can cause the cost of each message exchange to increase until the model's maximum token limit is reached.

{{< notice "note" >}}

* Note: In CBORG Chat, we have set the maximum context length of commercial models to significnatly lower limits compared to their design maximum, in order to control costs for the IT Division. If you need to use a model employing the full-length context window, our API key service provides access to commercial models with the full context window.

{{</ notice >}}

