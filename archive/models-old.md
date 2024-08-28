{{< accordion "Meta Llama 3.1 405B" >}}

Llama 3.1 is the latest version of the open source LLM from Meta. Llama is friendly and conversational, with capabilities approximately equivalent to ChatGPT 4. The model is running on a single 8x Nvidia H100 accelerators.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, Coding Assistant
- **Vision Support**: No
- **Tool Support**: No
- **Context Window**: 128K Tokens
- **Cost**: Free to use
- **API Model Name**: `lbl/llama-3`
- **Terms of Service**: [Meta Llama Model Card](https://github.com/meta-llama/llama-models/blob/main/models/llama3_1/MODEL_CARD.md)

{{< /accordion >}}

{{< accordion "Cohere Command R+" >}}

Cohere Command R+ has an advanced self-hosted model well suited to technical applications. The large token context window is the longest of any open model, which is useful for text summarization and RAG applications with long documents. R+ also supports tool use / function calling. This model is running on a 4x Nvidia A100 system.

- **Endpoint Location**: LBNL IT Division Data Center
- **Use Cases**: Chat, Text Summarization, RAG, Multi-Tool Use
- **Vision Support**: No
- **Tool Support**: Yes
- **Context Window**: 80K Tokens (Note: Context window is less than 128K model max due to current hardware limitations)
- **Cost**: Free to use 
- **API Model Name**: `lbl/command-r-plus`
- **Terms of Service**: [Cohere For AI Acceptable Use Policy](https://docs.cohere.com/docs/c4ai-acceptable-use-policy)

{{< /accordion >}}

