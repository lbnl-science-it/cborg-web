---
title: "API Examples"
# meta title
meta_title: ""
# meta description
description: ""
# save as draft
draft: false
---

The CBORG API server is an LLM proxy server that provides token-authenticated access to provided models. The proxy server is _OpenAI-compatible_, which means that in most cases it can be used as a drop-in replacement for any program that is built to work with OpenAI's ChatGPT.

To use the API server, you must provide your personal API key and set the model base endpoint to `https://api.cborg.lbl.gov`. 

Local clients on the LBL Network (VPN, Employee Wifi or Ethernet) may also use `https://api-local.cborg.lbl.gov` to bypass Cloudflare, which could block your application if it exceeds rate-limits.

To request a key, [complete this form](/api_request).

## Example Code

{{< highlight python >}}
import openai # CBORG API Proxy Server is OpenAI-compatible through the openai module
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'), # Please do not store your API key in the code
    base_url="https://api.cborg.lbl.gov" # Local clients can also use https://api-local.cborg.lbl.gov
)

models = [
    "lbl/cborg-chat:latest",       # LBL-hosted Llama 405B with custom system prompt
    "lbl/cborg-coder:latest",      # LBL-hosted Llama 405B with custom system prompt
    "lbl/cborg-vision:latest",     # LBL-hosted Llama 405B with custom system prompt
    "lbl/llama",                   # LBL-hosted Llama 405B Chat model
    "lbl/llama-vision",            # LBL-hosted Llama 90B Vision model
    "openai/gpt-4o",
    "openai/gpt-4o-mini",
    "openai/o1",
    "openai/o1-mini",
    "anthropic/claude-haiku",
    "anthropic/claude-sonnet",
    "anthropic/claude-opus",
    "google/gemini-pro",
    "google/gemini-flash",
    "aws/llama-3.1-405b",
    "aws/llama-3.1-70b",
    "aws/llama-3.1-8b",
    "aws/command-r-plus-v1",
    "aws/command-r-v1"
]

for m in models:
    try:
        response = client.chat.completions.create(
            model=m, 
            messages = [
                {
                    "role": "user",
                    "content": "What letter comes after A?"
                }
            ],
            temperature=0.0   # Optional: set model temperature to control amount of variance in response
        )
        
        print(f"Model: {m}\nResponse: {response.choices[-1].message.content}")
    except:
        print(f"Error calling model {m}")

{{< /highlight >}}

Now let's run the demo from the command line:

{{< highlight shell >}}
$ python ./test.py 
Model: lbl/cborg-chat:latest
Response:  The letter that comes after A in the English alphabet is B.
...
Model: openai/gpt-4o
Response: The letter that comes after A is B.
Model: openai/gpt-4o-mini
Response: The letter that comes after A is B.
Model: anthropic/claude-haiku
Response: The letter that comes after A is B.
Model: anthropic/claude-sonnet
Response: The letter that comes after A in the English alphabet is B.
...
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

## Usage Limitations

### Acceptable Use

Users are responsible for complying with the [terms of use of each model](/models).

### Guidance Document for LBNL Employees

Cyber Security has published a document providing [Guidance on using Generative AI Tools](https://commons.lbl.gov/display/cpp/Guidance+on+using+Generative+AI+tools)

LBNL Staff should familiarize themselves with the issues described above.

### Rate Limiting 

Note that in production applications, your program will need to use ratelimiting otherwise requests will be rejected by the proxy server if they arrive too fast.

For example, you may use the Python `ratelimit` module to ensure your application does not exceed the maximum usage limits. 

The proxy server will enforce reasonable limits for on the number of parallel requests, tokens per minute, requests per minute and budget consumption for commercial (non-free) models.

## Useful Tips

- [Best Practices for API Key Safety](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)
- [Best Practices for Prompt Engineering](https://help.openai.com/en/articles/6654000-best-practices-for-prompt-engineering-with-the-openai-api)

## Supported Models

### LBL-Hosted Models (free to use)

- `lbl/cborg-chat:latest`: Mistral Large 2 - Chat, Coding Assistant, Tool Use
- `lbl/mistral-large`: Same as above, direct name model route (may change)
- `lbl/cborg-chat-nano:latest`: Microsoft Phi 3.5 - Summarization
- `lbl/phi`: Same as above, direct name model route (may change)
- `lbl/nomic-embed-text`: 768-dimension Text Embedding Model
- `lbl/e5-embed-v2`: 1024-dimension Text Embedding Model (CURRENTLY OFFLINE)
- `lbl/nv-embed-v1`: 4096-dimension Text Embedding Model (CURRENTLY OFFLINE)

### Commercial Cloud-Hosted Model Aliases

- `openai/chatgpt:latest`: Alias to ChatGPT 4o (latest version)
- `anthropic/claude:latest`: Alias to Claude Sonnet 3.5 (latest version)
- `google/gemini:latest`: Alias to Gemini 1.5 Pro (latest version)

### Commercial Cloud-Hosted Models

- `openai/gpt-3.5-turbo`
- `openai/gpt-4o`
- `openai/gpt-4o-mini`
- `anthropic/claude-sonnet`
- `anthropic/claude-opus`
- `anthropic/claude-haiku`
- `google/gemini-pro`
- `google/gemini-flash`

## Example Code Requirements

- Request an API Key
- Save API key as an environment variable on your system.
- Install the OpenAI SDK for Python: `pip install openai`

