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

| Model Endpoint Location  | Model Creator  | Model Name            | Context Length* | Vision  | Cost** | Security Level | 
| ---------------          | :------------: | :--------:            | :-----:         | :---:   | :---:  | :-----: |
| LBL IT Division          | Meta           | Llama 4 Scout FP8     | 500K            | N       | N/C    | E       |
| LBL IT Division          | OpenAI         | GPT-OSS 120b          | 128K            | N       | N/C    | E       |
| LBL IT Division          | OpenAI         | GPT-OSS 20b           | 128K            | N       | N/C    | E       |
| LBL IT Division          | IBM            | Granite 3.2 Vision    | 32K             | N       | N/C    | E       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 5.1           | 272K            | Y       | $$     | E       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 5 Mini        | 272K            | Y       | $      | E       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 5 Nano        | 272K            | Y       | $      | E       |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 5.1 Codex     | 272K            | Y       | $$     | E       |
| Microsoft Azure Cloud    | OpenAI         | o3                    | 200K            | Y       | $$$    | E       |
| Microsoft Azure Cloud    | OpenAI         | o3 Mini               | 200K            | N       | $$     | E       |
| Microsoft Azure Cloud    | OpenAI         | o3 Mini High          | 200K            | N       | $$$    | E       |
| Microsoft Azure Cloud    | OpenAI         | o4 Mini               | 200K            | Y       | $$     | E       |
| Microsoft Azure Cloud    | OpenAI         | DALL-E 3.0            | 4000            | N       | $$     | E       |
| Google Cloud             | Google         | Gemini 2.5 Pro        | 1.0M            | Y       | $$$    | E       |
| Google Cloud             | Google         | Gemini 2.5 Flash      | 1.0M            | Y       | $$     | E       |
| Google Cloud             | Google         | Gemini 2.0 Flash Lite | 1.0M            | Y       | $      | E       |
| Google Cloud             | Qwen           | Qwen 3 Coder          | 256K            | Y       | $$     | E       |
| Google Cloud             | Qwen           | Qwen 3                | 32K             | Y       | $      | E       |
| Google Vertex AI         | Anthropic      | Claude 4.5 Haiku      | 200k            | Y       | $      | E       |
| Google Vertex AI         | Anthropic      | Claude 4.5 Sonnet     | 200k            | Y       | $$     | E       |
| Google Vertex AI         | Anthropic      | Claude 4.5 Opus       | 200k            | Y       | $$$    | E       |
| AWS Cloud                | Meta           | Llama 4 Scout         | 1.0M            | N       | $$     | E       |
| AWS Cloud                | Meta           | Llama 4 Maverik       | 128k            | N       | $      | E       |
| Microsoft Azure Cloud    | xAI            | Grok 3                | 128K            | Y       | $$$    | E       |
| Microsoft Azure Cloud    | xAI            | Grok 3 Mini           | 128K            | Y       | $$     | E       |
| xAI Cloud                | xAI            | Grok 4 0709           | 256K            | Y       | $$$    | C       |
| xAI Cloud                | xAI            | Grok Code Fast 1      | 256K            | N       | $      | C       |
| Wolfram Cloud            | Wolfram Research | Wolfram\|Alpha      | 1024            | N       | $      | C       |

{{< notice "note" >}}
** **Cost Explanation**: This column provides a rough order-of-magnitude estimate of costs associated with the model. Detailed cost data is provided further on this page. Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time and no PID is required.
{{< /notice >}}

**Security Levels Explanation**

**E** = Model usage is licensed under UCOP and/or DOE negotiated enterprise agreements. Model provider will not use your data for training. Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). May be approved for protected R&D information including ECI or S&T Matrix as part of an approved Access Plan. Please contact [IT Policy](mailto:itpolicy@lbl.gov) for more information. 

**C** = Model usage is licensed under non-negotiated commercial agreements. Model providers will not use your data for training. Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). No S&T or ECI or anything with FN or sponsor-specified protections permitted. For details consult [IT Policy AI Tool Security Levels](https://docs.google.com/spreadsheets/d/1l-ZX0wAajcaQClKd6tAPxUDQUQhnj7CMTSYoR-J-cmc/edit?gid=0#gid=0)

#### Legacy Models

Legacy Models (Please upgrade soon if you are using these)

| Model Endpoint Location  | Model Creator  | Model Name           |  
| ---------------          | :------------: | :--------:           | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4.1          | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4o           | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4o Mini      | 
| Microsoft Azure Cloud    | OpenAI         | o1                   | 
| Microsoft Azure Cloud    | OpenAI         | o1 Mini              |  
| AWS Cloud                | Anthropic      | Claude 3.7 Sonnet    | 
| AWS Cloud                | Anthropic      | Claude 3.5 Haiku     |
| AWS Cloud                | Anthropic      | Claude 3.0 Haiku     |
| AWS Cloud                | Anthropic      | Claude 3.0 Opus      |
| Google Cloud             | Google         | Gemini 1.5 Pro       |
| AWS Cloud                | Meta           | Llama 3.1 405b       |
| AWS Cloud                | Meta           | Llama 3.1 70b        |
| AWS Cloud                | Meta           | Llama 3.1 8b         |

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

| Model Endpoint Location  | Base Model         | Model Name         | Context Length* | Vision  | Cost**  | 
| ---------------          | :---------------:  | :--------:         | :-----:         | :---:   | :---:   | 
| LBL IT Division          | Llama 4 Scout FP8  | CBorg Chat         | 256K            | Y       | N/C    |
| LBL IT Division          | GPT OSS 120b       | CBorg Coder        | 128K            | N       | N/C    |
| LBL IT Division          | Granite 3.2 Vision | CBorg Vision       | 8K              | Y       | N/C    |
| LBL IT Division          | GPT OSS 120b       | CBorg Deepthought  | 128K            | N       | N/C    |

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
- **Underlying Model**: OpenAI gpt-oss-120b with Reasoning: high, Temperature = 1.0, Top-P = 1.0

#### CBorg Vision

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-vision`
- **Underlying Model**: IBM Granite 3.2 Vision 

#### CBorg Deepthought

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-deepthought`
- **Underlying Model**: OpenAI gpt-oss-120b with Reasoning: high, Temperature = 1.0, Top-P = 1.0 

#### CBorg Mini

- **Endpoint Location**: LBNL IT Division Data Center
- **Model Name**: `lbl/cborg-mini`
- **Underlying Model**: OpenAI gpt-oss-20b with Reasoning: high, Temperature = 1.0, Top-P = 1.0 

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
| `/openai/chatgpt:latest`     | `openai/gpt-5`             | 
| `/anthropic/claude:latest`   | `anthropic/claude-sonnet`  | 
| `/google/gemini:latest`      | `google/gemini-pro`        | 

#### OpenAI ChatGPT 5/5.1

Latest edition of ChatGPT from OpenAI. Mini and Nano variants are also available (-mini and -nano model names)

- **Endpoint Location**: Microsoft Azure Cloud (East US 2)
- **Use Cases**: Chat, Text Summarization, Image Description, Tool Use
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 1M Tokens
- **Cost per 1M Tokens (Input)**: $1.50 
- **Cost per 1M Tokens (Output)**: $10
- **API Model Name**: `gpt-5`, `gpt-5-mini`, `gpt-5-nano`
- **Pricing Details**: [Azure OpenAI Service Pricing](https://azure.microsoft.com/en-us/pricing/details/cognitive-services/openai-service/)
- **Terms of Service**: [Code of conduct for Azure OpenAI Service](https://learn.microsoft.com/en-us/legal/cognitive-services/openai/code-of-conduct)

#### OpenAI ChatGPT 4.1

Prior edition of ChatGPT from OpenAI. Mini and Nano variants are also available (-mini and -nano model names)

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

##### Google Gemini 3.0 Pro

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

#### Anthropic Claude 4.5 Haiku

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for short text summarization.

- **Endpoint Location**: AWS Bedrock and GCP Vertex AI
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 64K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00
- **API Model Name**: `anthropic/claude-haiku`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

#### Anthropic Claude 4.5 Sonnet

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. Sonnet 4.0 is the latest version with extended thinking (reasoning) available. Prompt caching is also supported.

- **Endpoint Location**: AWS Bedrock and GCP Vertex AI
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `anthropic/claude-sonnet`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

#### Anthropic Claude 4.5 Opus

Claude 4.5 Opus is the newest version of Anthropic's flagship model.

- **Endpoint Location**: Amazon Web Services (US West 2)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00
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

#### xAI Grok 3 and Grok 4

- **Endpoint Location**: xAI Cloud
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Cost per 1M Tokens (Input)**: $3.00 ($0.30 for mini)
- **Cost per 1M Tokens (Output)**: $15.00 ($0.50 for mini)
- **Input Length**: 128K Tokens
- **API Model Name**: `xai/grok`, `xai/grok-mini`, `xai/grok-3`, `xai/grok-3-mini`, `xai/grok-4`, `xai/grok-4-0709`
- **Terms of Service**: [xAI Terms of Service - Enterprise](https://x.ai/legal/terms-of-service-enterprise)

#### xAI Grok Code Fast 1

- **Endpoint Location**: xAI Cloud
- **Vision Support**: No
- **Tool Support**: Yes
- **Cost per 1M Tokens (Input)**: $0.20 ($0.02 for cached content)
- **Cost per 1M Tokens (Output)**: $1.50
- **Input Length**: 256K Tokens
- **API Model Name**: `xai/grok-code`, `xai/grok-code-fast-1`
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
