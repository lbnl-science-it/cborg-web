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

{{< highlight python >}}
import openai
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'),
    base_url="https://api.cborg.lbl.gov"
)

response = client.chat.completions.create(
    model="openai/gpt-3.5-turbo", # model to send to the proxy
    messages = [
        {
            "role": "user",
            "content": "What is the Lawrence Berkeley National Laboratory?"
        }
    ],
    temperature=0.0 # Optional: set model temperature to control amount of variance in response
)

print(response)
{{< / highlight >}}

Now let's run the demo from the command line:

{{< highlight shell >}}
$ python ./test.py 
ChatCompletion(id='chatcmpl-9SUkgBLQ5a51d5hoqkSgoJfoWkL2R', choices=[Choice(finish_reason='stop', 
index=0, logprobs=None, message=ChatCompletionMessage(content='The Lawrence Berkeley National 
Laboratory (Berkeley Lab) is a research institute located in Berkeley, California. It is owned 
by the United States Department of Energy and managed by the University of California. The 
laboratory conducts scientific research in a variety of fields, including physics, biology, and 
materials science, with a focus on solving important energy and environmental challenges. The lab 
is home to several national scientific facilities, including the Molecular Foundry, the Advanced 
Light Source, and the National Energy Research Scientific Computing Center. It is also a major 
contributor to the development of renewable energy technologies and plays a critical role in the 
U.S. innovation ecosystem.', role='assistant', function_call=None, tool_calls=None))], 
created=1716578422, model='gpt-35-turbo', object='chat.completion', system_fingerprint=None, 
usage=CompletionUsage(completion_tokens=125, prompt_tokens=16, total_tokens=141))
{{< / highlight >}}

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

