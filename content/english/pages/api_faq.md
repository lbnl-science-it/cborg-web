---
title: "Frequently Asked Questions for API Users"
# meta title
meta_title: ""
# meta description
description: "Common questions regarding the CBORG API Service"
# save as draft
draft: false
---

#### 1. How should I securely store the API key?

API keys must be stored securely. Do not put raw API keys into your source code! Use environment variables.

Read this: [Best Practices for API Key Security](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)

#### 2. How to handle slow requests?

When sending a large document for processing, you may encounter 
a client-side request timeout error while waiting for the complete response.

You can increase the timeout by adjusting the `request_timeout` parameter, e.g.:

{{< highlight python >}}
client = openai.ChatCompletion.create(
    model=MODEL,
    messages=[{ “role”: “user”, “content”: prompt }],
    request_timeout=600,
)
{{< / highlight >}}

Alternatively, you can use the streaming mode which will send back partial chunks of data as they are processed:

{{< highlight python >}}
response = client.chat.completions.create(
    model=MODEL,
    messages = [
        {
            "role": "user",
            "content": PROMPT
        }
    ],
    stream=True
)

answer = ''
for chunk in response:
    if chunk.choices[0].delta.content is not None:
        answer = answer + chunk.choices[0].delta.content

print(answer)
{{< / highlight >}}

#### 3. Why does my prompt hang and not return?

In some cases we have seen non-printable ASCII characters or "garbage" inputs cause the LLM engine to hang indefinitely when generating a response.

You may need to apply HTML escaping to your prompt to ensure no non-printable characters are sent to the endpoint, e.g.

{{< highlight python >}}
import html
html.escape(prompt)
{{< / highlight >}}

