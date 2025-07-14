---
title: "AI Models"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI models available through the CBORG AI Portal"
# save as draft
draft: false
---

## Available Models

### Chat and Vision Models

Note: This list changes frequently - please check back here for updates.

| Model Endpoint Location  | Model Creator  | Model Name           | Context Length* | Vision  | Cost** | P2P Okay*** | 
| ---------------          | :------------: | :--------:           | :-----:         | :---:   | :---:  | :-----: |
| LBL IT Division          | Meta           | Llama 4 Scout FP8    | 128K            | N       | N/C    | Y       |
| LBL IT Division          | Mistral        | Devstral Small 2505  | 128K            | N       | N/C    | Y       |
| LBL IT Division          | Alibaba        | Qwen QwQ             | 32K             | N       | N/C    | Y       |
| LBL IT Division          | Alibaba        | Qwen 2.5 Vision 72B  | 8K              | Y       | N/C    | Y       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4.1          | 1M              | Y       | $$     | Y       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4.1 Mini     | 1M              | Y       | $      | Y       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4.1 Nano     | 1M              | Y       | $      | Y       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4.5 Preview  | 128K            | Y       | $$$$$  | Y       |
| Microsoft Azure Cloud    | OpenAI         | o3                   | 200K            | Y       | $$$    | Y       |
| Microsoft Azure Cloud    | OpenAI         | o3 Mini              | 200K            | N       | $$     | Y       |
| Microsoft Azure Cloud    | OpenAI         | o3 Mini High         | 200K            | N       | $$$    | Y       |
| Microsoft Azure Cloud    | OpenAI         | o4 Mini              | 200K            | Y       | $$     | Y       |
| Microsoft Azure Cloud    | OpenAI         | DALL-E 3.0           | 4000            | N       | $$     | Y       |
| Google Cloud             | Google         | Gemini 2.5 Pro       | 1.0M            | Y       | $$$    | Y       |
| Google Cloud             | Google         | Gemini 2.5 Flash     | 1.0M            | Y       | $$     | Y       |
| Google Cloud             | Google         | Gemini 2.5 Flash Lite Preview | 1.0M           | Y       | $      | Y       |
| Google Cloud             | Google         | Gemini 2.0 Flash Lite | 1.0M           | Y       | $      | Y       |
| AWS Cloud                | Anthropic      | Claude 3.5 Haiku     | 200k            | Y       | $      | Y       |
| AWS Cloud                | Anthropic      | Claude 4.0 Sonnet    | 200k            | Y       | $$     | Y       |
| AWS Cloud                | Anthropic      | Claude 4.0 Opus      | 200k            | Y       | $$$    | Y       |
| AWS Cloud                | Cohere         | Command R+           | 128k            | N       | $$     | Y       |
| AWS Cloud                | Cohere         | Command R            | 128k            | N       | $      | Y       |
| xAI Cloud                | xAI            | Grok 3               | 128K            | Y       | $$$    | Y       |
| xAI Cloud                | xAI            | Grok 3 Mini          | 128K            | Y       | $$     | Y       |
| Wolfram Cloud            | Wolfram Research | Wolfram\|Alpha     | 1024            | N      | $       | N***    |

{{< notice "note" >}}
** **Cost Explanation**: This column provides a rough order-of-magnitude estimate of costs associated with the model. Detailed cost data is provided further on this page. Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time and no PID is required.
{{< /notice >}}

{{< notice "note" >}}
*** **P2P Okay Explanation**
**Y** = Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). May be approved for protected R&D information including ECI or S&T Matrix as part of an approved Access Plan. Please contact [IT Policy](mailto:itpolicy@lbl.gov) for more information. 

**N** = Only cleared for use with non-sensitive Public information. No negotiated terms. No S&T or ECI or anything with FN or sponsor-specified protections permitted. For details consult [IT Policy AI Tool Security Levels](https://docs.google.com/spreadsheets/d/1l-ZX0wAajcaQClKd6tAPxUDQUQhnj7CMTSYoR-J-cmc/edit?gid=0#gid=0)
{{< /notice >}}

#### Legacy Models

Legacy Models (Please upgrade soon if you are using these)

| Model Endpoint Location  | Model Creator  | Model Name           | Context Length* | Vision  | Cost** | P2P Okay*** | 
| ---------------          | :------------: | :--------:           | :-----:         | :---:   | :---:  | :-----: |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4o           | 128K            | Y       | $$$    | Y       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4o Mini      | 128K            | Y       | $      | Y       |
| Microsoft Azure Cloud    | OpenAI         | o1                   | 200K            | Y       | $$$$   | Y       |
| Microsoft Azure Cloud    | OpenAI         | o1 Mini              | 128K            | N       | $$$    | Y       | 
| AWS Cloud                | Anthropic      | Claude 3.7 Sonnet    | 200k            | Y       | $$     | Y       |
| AWS Cloud                | Anthropic      | Claude 3.0 Haiku     | 200k            | Y       | $      | Y       |
| AWS Cloud                | Anthropic      | Claude 3.0 Opus      | 200k            | Y       | $$$$   | Y       |
| Google Cloud             | Google         | Gemini 1.5 Pro       | 2.0M            | Y       | $      | Y       |
| AWS Cloud                | Meta           | Llama 3.1 405b       | 128k            | N       | $$     | Y       |
| AWS Cloud                | Meta           | Llama 3.1 70b        | 128k            | N       | $      | Y       |
| AWS Cloud                | Meta           | Llama 3.1 8b         | 128k            | N       | $      | Y       |

### Vector Embedding Models

| Model Endpoint Location  | Model Creator      | Model Name       | Max Tokens | Embedding Dimensions | Cost**  | 
| ---------------          | :------------:     | :--------:       | :-----:    | :---:                | :---: | 
| LBNL IT Division         | Nomic.AI           | nomic-embed-text | 8192       | 768                  | Free  |

### Code Completion Models

| Model Endpoint Location  | Model Creator           | Model Name           | Max Context | Cost**  | 
| ---------------          | :------------:          | :--------:           | :-----:     | :---:   | 
| LBNL IT Division         | Qwen 2.5 Coder Base     | lbl/cborg-coder-base | 32768       | N/C     |

### LBL-Hosted Customized Models

LBL-Hosted Customized Models use a customized system prompt on top of a base model, to provide improved behavior for LBL users in chat modes.

Note: API users can bypass the system prompt by accessing underlying models directly, if desired.

| Model Endpoint Location  | Base Model        | Model Name         | Context Length* | Vision  | Cost**  | 
| ---------------          | :---------------: | :--------:         | :-----:         | :---:   | :---:   | 
| LBL IT Division          | Llama 4 Scout NeuralMagic FP8 Dynamic     | CBorg Chat         | 256K            | Y       | N/C    |
| LBL IT Division          | MistralAI Devstral Small   | CBorg Coder        | 128K             | N       | N/C    |
| LBL IT Division          | Qwen 2.5 VL 72B   | CBorg Vision       | 8K            | Y       | N/C    |
| LBL IT Division          | Qwen QwQ          | CBorg Deepthought  | 32K            | N       | N/C    |

## Understanding the Context Window Length

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
* Context window sizes for commercially-hosted Generative AI models are reduced in CBORG Chat to limit excessive usage. To make use of the full-length of context windows please request an API key or engage with Science IT Consulting to discuss using cloud services with a PID recharge.
{{< /notice >}}

## Model Information Details

### LBL-Hosted Models

The IT Division's Science IT group provides access to open-weight models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBL-Hosted models are free-to-use.

These models are licensed for non-commercial research use.

#### CBorg Chat

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-chat:latest`
- **Underlying Model**: Meta Llama 4 Scout Instruct with Custom System Prompt

#### CBorg Coder

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-coder`
- **Underlying Model**: MistralAI Devstral Small 2505 with Custom System Prompt and Temperature = 0.15

#### CBorg Vision

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-vision:latest`
- **Underlying Model**: Qwen 2.5 VL Instruct 72B

#### CBorg Deepthought

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-deepthought:latest`
- **Underlying Model**: Qwen QwQ 32B with Reasoning and Tool Use

#### Meta Llama 4 Scout

Underlying model is Llama 4 Scout. Context length is limited to 128K tokens.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Summarization, Coding Assistant, Tool Use
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost**: No cost
- **Model Name**: `Llama-4-Scout-17B-16E-Instruct`
- **Terms of Service**: [Meta Llama Use Policy](https://www.llama.com/llama4/use-policy/)

#### Qwen 2.5 Vision 72B

Note that a minimum image size of 256x256 pixels is required. Upsampling images can improve results. Context is limited to 8K in this deployment.
The model supports object location with bounding boxes, OCR-to-HTML output and agentic computer use. Detail: [Qwen 2.5 Examples](https://qwenlm.github.io/blog/qwen2.5-vl/)

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Image Description, OCR, Agentic Computer Use 
- **Vision Support**: Yes
- **Tool Support**: No, but includes native tools for browser use, OCR-to-HTML and object grounding
- **Context Window**: 8K Tokens
- **Cost**: No cost
- **Model Name**: `lbl/qwen-vision`
- **Terms of Service**: [Qwen 2.5-VL Model Card](https://huggingface.co/Qwen/Qwen2.5-VL-72B-Instruct)

#### Perplexity R1 1776 DeepSeek R1 Distill Llama 70B (currently offline)

This is an open-weight reasoning model, hosted on IT-division hardware (no prompts will be sent outside the LBL network).

This deployment is based on a version of DeepSeek R1 that has undergone post-training by Perplexity to remove censorship and bias in the original model.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Math, Code Generation, Logic 
- **Vision Support**: No 
- **Tool Support**: No - but workarounds exist
- **Context Window**: 128K Tokens
- **Cost**: No cost
- **Model Name**: `lbl/deepseek-r1:llama-70b`
- **Terms of Service**: [DeepSeek R1 Model Card](https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-70B)

#### Qwen QwQ Reasoning Model

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Tool use, code architect
- **Vision Support**: No 
- **Tool Support**: Yes
- **Context Window**: 32K Tokens*
- **Cost**: No cost
- **Model Name**: `lbl/qwen-qwq`
- **Terms of Service**: [Qwen QwQ](https://huggingface.co/Qwen/QwQ-32B)

* Context length of this model can be extended to 128K but for practical performance reasons is limited to 32K in the Lab-hosted instance.

#### Qwen 2.5 Coder 32B Instruct

Current leading open model for code generation, trained on permissively licensed open source code.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Code Generation 
- **Vision Support**: No 
- **Tool Support**: No 
- **Context Window**: 32K Tokens*
- **Cost**: No cost
- **Model Name**: `lbl/qwen-coder`
- **Terms of Service**: [Qwen 2.5 Coder](https://huggingface.co/Qwen/Qwen2.5-Coder-32B-Instruct)

* Context length of this model can be extended to 128K but for practical performance reasons is limited to 32K in the Lab-hosted instance.

#### Nomic AI nomic-embed-text

A high-performing open embedding model with a large token context window. nomic-embed-text is popular for use with self-hosted ollama installations. This provides a hosted endpoint with the same model.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Query and Passage Encoding
- **Max Tokens**: 8192
- **Embedding Dimensions**: 768
- **Cost**: Free to use
- **API Model Name**: `lbl/nomic-embed-text`
- **Model Information**: [Nomic.AI](https://www.nomic.ai/blog/posts/nomic-embed-text-v1)

### Cloud-Hosted Models

Cloud-hosted models are provided using on-demand services from commercial cloud providers. Costs for using these models are paid for by the IT Division. Please select the appropriate model for your application, keeping in mind the cost burdens associated with each. Using these models will cause your data to be shared with cloud providers in accordance with their terms of service. For detailed terms of service of each provider, see the model details below.

**Model Aliases**

To simplify application development, alias model names are provided that point to the recommended
version of each model provider, as follows:


| Alias Name                   | Base Model                 |
| ---------------------------  | :---------:                |
| `/openai/chatgpt:latest`     | `openai/gpt-4.1`           | 
| `/anthropic/claude:latest`   | `anthropic/claude-sonnet`  | 
| `/google/gemini:latest`      | `google/gemini-pro`        | 

#### OpenAI ChatGPT 4.1

ChatGPT 4.1 is the latest standard edition of ChatGPT from OpenAI. Mini and Nano variants are also available (-mini and -nano model names)

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 1M Tokens
- **Cost per 1M Tokens (Input)**: $2.00 
- **Cost per 1M Tokens (Output)**: $8.00
- **API Model Name**: `openai/gpt-4.1`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI ChatGPT 4.5 Preview

ChatGPT 4.5 Preview is a "heavy duty" version of ChatGPT. Due to the high expense it should only be used for "high-value" output generation.

- **Endpoint Location**: Microsoft Azure Cloud (East US)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 1M Tokens
- **Cost per 1M Tokens (Input)**: $75.00
- **Cost per 1M Tokens (Output)**: $150.00
- **API Model Name**: `openai/gpt-4.5`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI o3

OpenAI o3 is a multi-modal deep reasoning model.

**Cost**: o* models also count "reasoning tokens" as output tokens, resulting in approximately 10x more output tokens compared to GPT 4-series models. 
- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Advanced Reasoning, Text Analysis
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens (Note: Limited to 8K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $10.00 
- **Cost per 1M Tokens (Output)**: $40.00
- **API Model Name**: `openai/o3`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI o3-Mini / OpenAI o3-Mini High

OpenAI o3 Mini is the latest lightweight text-only model with advanced reasoning capabilities. o3 Mini High variant has the reasoning effort set to "High".

**Cost**: o1 models also count "reasoning tokens" as output tokens, resulting in approximately 2-10x more output tokens compared to GPT 4-series models. 

- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Advanced Reasoning, Text Analysis
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.55 
- **Cost per 1M Tokens (Output)**: $4.40
- **API Model Name**: `openai/o3-mini`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI o4-Mini / OpenAI o4-Mini High

OpenAI o4 Mini is the latest lightweight multi-modal model with advanced reasoning capabilities. o4 Mini High variant has the reasoning effort set to "High".

- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Advanced Reasoning, Text Analysis
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $1.1 
- **Cost per 1M Tokens (Output)**: $4.40
- **API Model Name**: `openai/o4-mini`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI o1 (Deprecated)

OpenAI o1 is a deep reasoning text-only model with advanced reasoning capabilities.

**Cost**: o1 models also count "reasoning tokens" as output tokens, resulting in approximately 10x more output tokens compared to GPT 4-series models. 
- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Advanced Reasoning, Text Analysis
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens (Note: Limited to 8K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $15.50 
- **Cost per 1M Tokens (Output)**: $60.00
- **API Model Name**: `openai/o1`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI o1 Mini (Deprecated)

OpenAI o1 Mini is a lightweight text-only model with advanced reasoning capabilities.

**NOTE**: o3 Mini is newer and has lower cost compared to o1 Mini.

- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Advanced Reasoning, Text Analysis
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.30 
- **Cost per 1M Tokens (Output)**: $13.20
- **API Model Name**: `openai/o1-mini`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI ChatGPT 4o (Deprecated)

ChatGPT-4o is the previous version of ChatGPT from OpenAI.

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

#### OpenAI ChatGPT 4o Mini (Deprecated)

ChatGPT-4o-Mini is a lightweight version ChatGPT 4o from OpenAI. It is faster and lower cost compared to the GPT-4o model, and less than half the cost of ChatGPT 3.5.

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

##### Google Gemini 2.5 Flash

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes 
- **Context Window**: 1.0M Tokens (Note: Limited to 32K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.35
- **Cost per 1M Tokens (Output)**: $0.70
- **API Model Name**: `google/gemini-flash`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

##### Google Gemini 2.5 Pro

Our service connects to the enterprise version of Google Gemini. Inputs are not used by Google for training of future AI models.

- **Endpoint Location**: Google Cloud
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes 
- **Context Window**: 2.0M Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.50
- **Cost per 1M Tokens (Output)**: $7.00
- **API Model Name**: `google/gemini-pro`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

#### Anthropic Claude 3.5 Haiku

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for short text summarization.

**NOTE**: Pricing for Claude Haiku increased with the 3.5 release.

- **Endpoint Location**: Amazon Web Services (US West 2)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 64K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00
- **API Model Name**: `anthropic/claude-haiku`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

#### Anthropic Claude 4.0 Sonnet

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. Sonnet 4.0 is the latest version with extended thinking (reasoning) available. Prompt caching is also supported.

- **Endpoint Location**: Amazon Web Services (US West 2)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `anthropic/claude-sonnet`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

#### Anthropic Claude 4.0 Opus

Claude 4.0 Opus is the newest version of Anthropic's flagship model.

- **Endpoint Location**: Amazon Web Services (US West 2)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 4096 in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00
- **API Model Name**: `anthropic/claude-opus`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

#### AWS Bedrock Meta Llama 3.1 405B

**Note:** This version of Llama 3.1 runs in the AWS cloud. The 405B model here uses full-precision BF16-format
which may result in slightly different outputs compared to the LBL-hosted FP8-quantized model.
Smaller model formats are also available.

Llama 3.1 is the latest version of the open source LLM from Meta. Llama is friendly and conversational, with capabilities approximately equivalent to ChatGPT 4 in the 405B-parameter version.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens
- **Cost per 1M Tokens (Input)**: $5.32
- **Cost per 1M Tokens (Output)**: $16.00
- **API Model Name**: `aws/llama-3.1-405b` (also available at lower costs: -70b and -8b)
- **Terms of Service**: [Meta Llama Model Card](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md)

#### AWS Bedrock Cohere Command R+

Cohere Command R and R+ are intended to support enterprise applications with tool use and RAG capabilities.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, RAG, Tool Use
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 128K Tokens
- **Cost per 1M Tokens (Input)**: $1.50
- **Cost per 1M Tokens (Output)**: $3.00
- **API Model Name**: `aws/command-r-plus`, `aws/command-r` (lower cost version)
- **Terms of Service**: [Cohere For AI Acceptable Use Policy](https://docs.cohere.com/docs/c4ai-acceptable-use-policy)

#### xAI Grok

- **Endpoint Location**: xAI Cloud
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Cost per 1M Tokens (Input)**: $3.00 ($0.30 for mini)
- **Cost per 1M Tokens (Output)**: $15.00 ($0.50 for mini)
- **Input Length**: 128K Tokens
- **API Model Name**: `xai/grok`, `xai/grok-mini`
- **Terms of Service**: [xAI Terms of Service - Enterprise](https://x.ai/legal/terms-of-service-enterprise)

#### Wolfram|Alpha

Wolfram|Alpha can lookup information, consult databases and perform mathematical calculations.
The CBorg endpoint accepts queries as OpenAI-compatible user messages and returns results
in Markdown-formatted text.

- **Endpoint Location**: Wolfram Cloud
- **Use Cases**: Calculator, Database Lookup
- **Vision Support**: No
- **Tool Support**: No
- **Input Length**: 1024 Characters
- **API Model Name**: `wolfram/alpha`
- **Terms of Service**: [Wolfram|Alpha Terms of Use](https://www.wolframalpha.com/termsofuse)


