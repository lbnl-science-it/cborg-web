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

To request a key, [complete this form](/api_request).

## Example Code

{{< highlight python >}}
import openai # CBORG API Proxy Server is OpenAI-compatible through the openai module
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'), # Please do not store your API key in the code
    base_url="https://api.cborg.lbl.gov"
)

models = [
    "lbl/llama-3",          # LBL-hosted model (free to use)
    "lbl/command-r-plus",   # LBL-hosted model (free to use)
    "openai/gpt-3.5-turbo",
    "openai/gpt-4o",
    "openai/gpt-4",
    "google/gemini-1.0-pro",
    "google/gemini-1.5-flash",
    "google/gemini-1.5-pro",
    "aws/claude-haiku",
    "aws/claude-sonnet",
    "aws/claude-opus"
]

for m in models:
    try:
        response = client.chat.completions.create(
            model=m, 
            messages = [
                {
                    "role": "user",
                    "content": "What is the Lawrence Berkeley National Laboratory?"
                }
            ],
            temperature=0.0 # Optional: set model temperature to control amount of variance in response
        )
        
        print(f"Model: {m}\nResponse: {response.choices[-1].message.content}")
    except:
        print(f"Error calling model {m}")

{{< / highlight >}}

Now let's run the demo from the command line:

{{< highlight shell >}}
$ python ./test.py 
Model: lbl/llama-3
Response: The Lawrence Berkeley National Laboratory (LBNL) is a United States national 
laboratory located in Berkeley, California, that conducts scientific research on behalf 
of the United States Department of Energy (DOE). It is one of the 17 National Laboratories 
in the United States and is managed by the University of California.
...
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

## Supported Models

### LBL-Hosted Models (free to use)

- `lbl/llamma-3`: 70B Parameter Model - Chat
- `lbl/command-r-plus` : 104B Parameter Model - Tool Use, RAG, Summarization

### Commercial Cloud-Hosted Models

- `openai/gpt-3.5-turbo`
- `openai/gpt-4o-turbo`
- `openai/gpt-4`
- `aws/claude-sonnet`
- `aws/claude-opus`
- `aws/claude-haiku`
- `google/gemini-1.0-pro`
- `google/gemini-1.5-flash`
- `google/gemini-1.5-pro`

## Example Code Requirements

- Request an API Key
- Save API key as an environment variable on your system
- Install the OpenAI SDK for Python: `pip install openai`

