---
title: "API Examples"
# meta title
meta_title: ""
# meta description
description: ""
# save as draft
draft: false
---

The CBORG API server is an proxy server that provides token-authenticated access to provided models. The proxy server is _OpenAI-compatible_, which means that in most cases it can be used as a drop-in replacement for any program that is built to work with OpenAI's ChatGPT.

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

{{< highlight python >}}
import openai
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'), # Please do not store your API key in the code
    base_url="https://api.cborg.lbl.gov" # Local clients can also use https://api-local.cborg.lbl.gov
)

# Note this list of models is frequently updated and may be out-of-date
models = [
    "lbl/cborg-chat:latest",       # LBL-hosted Llama with custom system prompt
    "lbl/cborg-coder:latest",      # LBL-hosted Llama with custom system prompt
    "lbl/cborg-vision:latest",     # LBL-hosted Llama with custom system prompt
    "lbl/llama",                   # LBL-hosted Chat model
    "lbl/qwen-coder",              # LBL-hosted Coding model
    "lbl/qwen-vision",             # LBL-hosted Vision model
    "openai/gpt-4o",
    "openai/gpt-4o-mini",
    "openai/o1",
    "openai/o1-mini",
    "openai/o3-mini",
    "anthropic/claude-haiku",
    "anthropic/claude-sonnet",
    "anthropic/claude-opus",
    "google/gemini-pro",
    "google/gemini-flash",
    "google/gemini-flash-lite",
    "xai/grok",
    "xai/grok-mini",
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

# Prompt Caching Example

Automatic (implicit) prompt caching is supported by OpenAI models (GPT and o1...o4). Anthropic prompt caching is supported using an explicit cache-write via the cache_control flag (there is a cost for cache writes). Currently, other models such as Gemini do not support prompt caching via CBorg API, but can be available via direct access (requires your own cloud account).

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


