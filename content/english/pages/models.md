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

| Model Endpoint Location  | Model Creator  | Model Name         | Context Length* | Vision | Cost**  | 
| ---------------          | :------------: | :--------:         | :-----:         | :---:   | :---: | 
| LBNL IT Division         | Meta           | LLaMA 3 70B        | 8K              | N       | Free  |
| LBNL IT Division         | Cohere         | Command R+ 104B    | 80K             | N       | Free  |
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 3.5        | 16K             | N       | $     | 
| Microsoft Azure Cloud    | OpenAI         | ChatGPT 4-Omni     | 128K            | Y       | $$    | 
| Google Cloud             | Google         | Gemini 1.5 Flash   | 1.0M            | Y       | $     |
| Google Cloud             | Google         | Gemini 1.5 Pro     | 1.0M            | Y       | $$    |
| AWS Cloud                | Anthropic      | Claude Haiku       | 200k            | Y       | $     |
| AWS Cloud                | Anthropic      | Claude Sonnet      | 200k            | Y       | $$    |
| AWS Cloud                | Anthropic      | Claude Opus        | 200k            | Y       | $$$   |

{{< notice "note" >}}
** Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time.
{{< /notice >}}

{{< notice "note" >}}
* Context window sizes for commercially-hosted models are reduced in CBORG Chat to limit excessive usage. To make use of the full-length of context windows please request an API key or engage with Science IT Consulting to discuss using cloud services with a PID recharge.
{{< /notice >}}


### LBNL-Hosted Models

The IT Division's Science IT group provides access to open models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBNL-Hosted models are free-to-use.

{{< accordion "Meta Llama 3 70B" >}}

Llama 3 is the latest version of the open source LLM from Meta. Llama is friendly and conversational, with good reasoning capabilities approximately equivalent to ChatGPT 3.5. The model is running on a 4x Nvidia A40 system.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 8K Tokens
- **Cost**: Free to use 
- **API Model Name**: `lbl/llama-3`
- **Terms of Service**: [Meta LLaMA Acceptable Use Policy](https://llama.meta.com/llama3/use-policy/)

{{< /accordion >}}

{{< accordion "Cohere Command R+" >}}

Cohere Command R+ has a neutral voice that is well suited to technical applications. The large token context window is the longest of any open model, which is useful for text summarization and RAG applications with long documents. R+ also supports tool use. The model is running on a 4x Nvidia A100 system.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, RAG, Multi-Tool Use
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 80K Tokens (Note: Context window is less than 128K model max due to current hardware memory limitations)
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
- **Context Window**: 1.0M Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.50
- **Cost per 1M Tokens (Output)**: $7.00
- **API Model Name**: `google/gemini-1.5-pro-latest`
- **Pricing Details**: [Gemini API Pricing](https://ai.google.dev/pricing)
- **Terms of Service**: [Gemini API Additional Terms of Use](https://ai.google.dev/gemini-api/terms)

{{< /accordion >}}

{{< accordion "Anthropic Claude Haiku" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. The Haiku version is suitable for short text summarization.

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 64K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.25
- **API Model Name**: `anthropic/claude-haiku-latest`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}

{{< accordion "Anthropic Claude Sonnet" >}}

Claude has superior reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. The 200K token context window is large compared to competitors. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 16K in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00
- **API Model Name**: `anthropic/claude-sonnet-latest`
- **Pricing Details**: [Anthropic API Pricing](https://aws.amazon.com/bedrock/pricing/)
- **Terms of Service**: [Anthropic Commercial Terms of Service](https://www-cdn.anthropic.com/6b68a6508f0210c5fe08f0199caa05c4ee6fb4dc/Anthropic-on-Bedrock-Commercial-Terms-of-Service_Dec_2023.pdf)

{{< /accordion >}}


{{< accordion "Anthropic Claude Opus" >}}

Claude has excellent reasoning and code analysis capabilities compared to other leading models, but can be expensive in the largest variants. 

- **Endpoint Location**: Amazon Web Services (US West)
- **Use Cases**: Chat, Text Summarization, Image Description
- **Vision Support**: Yes
- **Tool Support**: Yes
- **Context Window**: 200k Tokens (Note: Limited to 4096 in CBORG Chat)
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00
- **API Model Name**: `anthropic/claude-opus-latest`
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
| 128K           | 250            | ChatGPT 4            |
| 80K            | 160            | Command R+ (LBNL-Hosted) |
| 64K            | 128            |                      |
| 32K            | 64             |                      |
| 16K            | 32             | ChatGPT 3.5          |
| 8K             | 16             | Llama 3 70B (LBNL-Hosted)       |
| 4K             | 8              |                      |

When chatting with a model, your entire chat history of the session is fed into the context window with every message sent. Therefore, as you send more messages the context length will increase. Over time this can cause the cost of each message exchange to increase until the model's maximum token limit is reached.

{{< notice "note" >}}

* Note: In CBORG Chat, we have set the maximum context length of commercial models to significnatly lower limits compared to their design maximum, in order to control costs for the IT Division. If you need to use a model employing the full-length context window, our API key service provides access to commercial models with the full context window.
{{</ notice >}}

#### 1. **Why use LBNL-Hosted versus Commercial Models?**

##### Why use LBNL-Hosted Models?

**Pros:** 

- Your data is retained within LBNL systems and networks
- Free to use for building large scale LLM-powered applications
- "Uncensored" models available without guardrail restrictions
- Supports open research

**Cons:**

- May be slower to generate responses
- May be occasionally offline during data center maintenance

##### Why use Commercial Cloud-hosted models?

**Pros:**

- Highest quality of reasoning, nuanced outputs
- Typically faster to generate
- High-availability and scalability
- Best multi-modal capabilities (speech, vision, document OCR and handwriting recognition)

**Cons:**

- High cost in large-scale document processing use cases
- Inputs and outputs may be subject to human review for provider policy violations

#### 2. **Why pick model A or B (model selection)?**

- **Commercial cloud models provide the best quality**: Commercial cloud models run on large compute clusters with memory and bandwidth far exceeding what is possible with self-hosted models. If you need the highest quality output, an advanced commercial cloud-hosted model will be the best choice provided that it is compatible with any IP or privacy restrictions associated with your content.
- **Nuanced reasoning, scientific research, coding, technical writing**: Use an advanced model, typically from the commercial cloud providers if self-hosted alternatives are not sufficient.
- **Document summarization, document cleaning, translation & transcription**: Use a lower-cost model or LBNL-hosted model to reduce cost, as advanced reasoning is not required.
- **Image Analysis (vision)**: ChatGPT 4, Google Gemini and Anthropic Claude all support vision. Attach your image and then ask questions.
- **Large-scale automated document processing**: Use a LBNL-Hosted model which are free to use, saving costs when processing thousands to millions of documents. Batch processing can also reduce costs, typically by 50% for results returned within 24 hours.

#### 3. **How do LBNL-Hosted Models compare to Self-Hosted Options?**

LBNL-Hosted models are served using the vLLM engine, which is capable of efficiently serving a large number of simultaneous users. We use multi-way GPU systems that improve the speed and amount of memory available to the model (e.g. 320GB or more of GPU RAM) compared to what is possible on consumer-grade laptop and desktop computers. In addition, our models are evaluated in FP16 precision, which increases the accuracy and quality of outputs compared to quantized models that have been compressed to fit into small-memory devices.

#### 3. **Can I host my own model on IT Division infrastructure?**

Please reach out to us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) to discuss hosting of your own models or other LLM-powered applications.

