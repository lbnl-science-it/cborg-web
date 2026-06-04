---
title: "Getting Started with the API"
# meta title
meta_title: ""
# meta description
description: "Quick start guide and code examples for the CBorg API"
# save as draft
draft: false
---

The CBorg API server is a token-authenticated proxy built on [LiteLLM](https://www.litellm.ai/), which acts as a translation layer across multiple AI provider protocols. It supports OpenAI Chat Completions, OpenAI Responses, Anthropic (including Claude Code), and Gemini -- allowing you to access a wide range of models through a single, unified endpoint.

## Key Management

To request a key go to the [CBorg Key Manager](/api_request).

## Endpoint Location

The API base for CBorg is `https://api.cborg.lbl.gov`. 

**Note:** `https://api.cborg.lbl.gov` is routed through Cloudflare, which can occasionally result in your client being blocked due to high request rate. To route directly to the API server without using Cloudflare, clients on the LBL Network (VPN, Employee Wifi or Ethernet) may use `https://api-local.cborg.lbl.gov`.

















## Usage Limitations

### Acceptable Use

Users are responsible for complying with the [terms of use of each model](/models).

***Not for Public Deployment**: The CBorg API should not be connected to any publicly accessible chatbot or interactive user interface. CBorg does not include security measures and guardrails required for public deployment of LLMs. Static (offline) generated content is okay. Please contact [Science IT Consulting](scienceit@lbl.gov) if you have any questions about deployment of software incorporating the CBorg API.

### IT Policy Guidance for LBNL Employees

Cyber Security has published a document providing [Guidance on using Generative AI Tools](https://commons.lbl.gov/display/cpp/Guidance+on+using+Generative+AI+tools)

LBNL Staff should familiarize themselves with the issues described above.

### Rate Limiting 

Note that in production applications, your program will need to use ratelimiting otherwise requests will be rejected by the proxy server if they arrive too fast.

For example, you may use the Python `ratelimit` module to ensure your application does not exceed the maximum usage limits. 

The proxy server will enforce reasonable limits for on the number of parallel requests, tokens per minute, requests per minute and budget consumption for commercial (non-free) models.

## Useful Tips

- [Best Practices for API Key Safety](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)
- [Best Practices for Prompt Engineering](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-the-openai-api)

## Example Code Requirements

- Request an API Key
- Save API key as an environment variable on your system.
- Install the OpenAI SDK for Python: `pip install openai`

{{< notice "note" >}}
Please also see the examples on the [API FAQ](/api_faq) page for more examples.
{{< / notice >}}

## Example Code - Call All Models

This script dynamically fetches the current model list from the API, then sends a test prompt to every chat/completion model and a test input to every embedding model. No hardcoded model names -- it always reflects what is actually available.

{{< highlight python >}}
import os
import requests
import openai

API_BASE = "https://api.cborg.lbl.gov"
API_KEY = os.environ["CBORG_API_KEY"]

client = openai.OpenAI(api_key=API_KEY, base_url=API_BASE)

# Fetch the live model list and split into chat and embedding models
model_info = requests.get(
    f"{API_BASE}/model/info",
    headers={"Authorization": f"Bearer {API_KEY}"},
).json()

chat_models = []
embedding_models = []

for entry in model_info.get("data", []):
    name = entry["model_name"]
    mode = (entry.get("model_info") or {}).get("mode")
    if mode == "embedding" or (mode is None and "embedding" in name):
        embedding_models.append(name)
    elif mode in ("chat", "completion", "responses") or mode is None:
        chat_models.append(name)

print(f"Found {len(chat_models)} chat models, {len(embedding_models)} embedding models\n")

# Test each chat/completion model
for model in chat_models:
    try:
        response = client.chat.completions.create(
            model=model,
            messages=[{"role": "user", "content": "Reply with 'OK'. No other commentary."}],
        )
        answer = response.choices[0].message.content.strip()
        usage = response.usage
        print(f"[chat] {model}: {answer!r}  "
              f"(prompt={usage.prompt_tokens} completion={usage.completion_tokens})")
    except Exception as e:
        print(f"[chat] {model}: ERROR -- {e}")

# Test each embedding model
for model in embedding_models:
    try:
        response = client.embeddings.create(
            model=model,
            input="The quick brown fox jumps over the lazy dog",
        )
        vec = response.data[0].embedding
        print(f"[embed] {model}: vector length={len(vec)}, first values={vec[:3]}")
    except Exception as e:
        print(f"[embed] {model}: ERROR -- {e}")
{{< /highlight >}}

## RAG Embedding Example

{{< highlight python >}}

import os
import openai
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity

openai.api_key = os.environ.get('CBORG_API_KEY')
openai.base_url = "https://api.cborg.lbl.gov"

model = "lbl/nomic-embed-text"

doc1 = "Apple"
doc2 = "Bread"

response = openai.embeddings.create(
            model=model, # model to send to the proxy
            input = [doc1, doc2] # documents to encode, **this must always be a list, even if only encoding 1 doc**
        )

d1 = response.data[0].embedding
d2 = response.data[1].embedding

query = "Orange"

response = openai.embeddings.create(
            model=model, # model to send to the proxy
            input=query # query - this must be a string, **never send a list to generate a query vector**
        )

q = response.data[0].embedding

query = np.array([q])
documents = np.array([d1,d2])

print('Similarity of query "Orange" to "Apple" versus "Bread" (higher is more similar):', cosine_similarity(query,documents))

{{< / highlight >}}

# Prompt Caching Example

**OpenAI** (GPT, o1...o4) and **Gemini** models use implicit (automatic) prompt caching -- no special flags required. **Anthropic** models require an explicit cache-write via the `cache_control` flag (note: there is a cost for cache writes).

You can verify whether caching was applied by inspecting the usage metadata in the response -- look for `cached_tokens` in `prompt_tokens_details`.

{{< highlight python >}}

import os
import json
import openai

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'),
    base_url="https://api.cborg.lbl.gov" # CBORG API proxy is OpenAI compatible
)

for i in range(2):

    for m in [ "openai/gpt-4.1", "anthropic/claude-sonnet" ]:
        r = client.chat.completions.with_raw_response.create(
            model=m,
            messages = [
                {
                    "role": "system",
                    "content": "Always talk like a pirate. " * 200, # must be at least 1024 tokens to use cache on OpenAI models
                    "cache_control": {"type": "ephemeral"}, # explicit cache write command is required for Anthropic models
                }, 
                {
                    "role": "user",
                    "content": "What letter comes afte A in the alphabet?"
                }
            ]
        )

        data = json.loads(r.content)
        print(m, i+1, "Cached Tokens:", data['usage']['prompt_tokens_details']['cached_tokens'])
        print(m, i+1, 'Calculated Cost:', r.headers.get('x-litellm-response-cost'))

{{< / highlight >}}


