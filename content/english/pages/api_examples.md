---
title: "API Examples"
# meta title
meta_title: ""
# meta description
description: ""
# save as draft
draft: false
---

The CBORG API server is OpenAI compatible. You can use any program that normally works with OpenAI ChatGPT by providing your API key and setting the endpoint to `https://api.cborg.lbl.gov`.

```
import openai
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'),
    base_url="https://api.cborg.lbl.gov" # CBORG API proxy is OpenAI compatible
    temperature=0.0 # Option: set model temperature to control amount of variance in response
)

response = client.chat.completions.create(
    model="openai/gpt-3.5-turbo", # model to send to the proxy
    messages = [
        {
            "role": "user",
            "content": "What is the Lawnece Berkeley National Laboratory?"
        }
    ]
)

print(response)

```

## Supported Models

### LBL-Hosted Models (free to use)

- `lbl/lamma-3`: 70B Parameter Model - Chat
- `lbl/command-r-plus` : 104B Parameter Model - Tool Use, RAG, Summarization

### Commercial Cloud-Hosted Models

- `openai/gpt-3.5-turbo`
- `openai/gpt-4-turbo`
- `anthropic/claude-sonnet`
- `anthropic/claude-opus`
- `anthropic/claude-haiku`

## Example Code Requirements

- Request an API Key
- Save API key as an environment variable on your system
- Install the OpenAI SDK for Python: `pip install openai`

