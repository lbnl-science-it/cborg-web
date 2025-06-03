---
title: "Frequently Asked Questions for API Users"
# meta title
meta_title: ""
# meta description
description: "Common questions regarding the CBorg API Service"
# save as draft
draft: false
---

{{< notice "note" >}}
Got a question? Email us at [scienceit@lbl.gov](scienceit@lbl.gov) or join the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7)
{{< / notice >}}

**Note:** The full API interface is documented here: [CBorg API Documentation](https://api.cborg.lbl.gov/)

#### How should I securely store the API key?

API keys must be stored securely. Do not put raw API keys into your source code! Use environment variables.

Read this: [Best Practices for API Key Security](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)

#### How do I check my key budget and spend?

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current spend with `/user/info`, e.g.;

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/user/info' --header "Authorization: Bearer $CBORG_API_KEY"
{{< /highlight >}}

#### How do I retreive all available models?

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/model/info' --header "Authorization: Bearer $CBORG_API_KEY" | jq | less
{{< /highlight >}}

#### How do I avoid models with a default system promt? I need full control.

The "CBorg" models "lbl/cborg-chat" and "lbl/cborg-coder" have default system messages. For full control you should directly access the underlying model, e.g. "lbl/llama" and "lbl/qwen-coder".

#### What models support prompt caching?

Check the model property `supports_prompt_caching = true` in the JSON structure returned from `https://api.cborg.lbl.gov/model/info`.

#### How do I get the actual cost of an API call?

Before making the call, you can estimate the cost using `/cost/calculate`.

After making the call, you can get the true calculated cost from the HTTP response header `x-litellm-response-cost`.

#### How to I specify the exact model name - I need full control of the version

Some model names, e.g. `anthropic/claude-sonnet` are aliases that point to the latest version of that model. To ensure that your application does not "auto-upgrade" to newer versions, you may refer to the exact underlying model. Check the complete list of models using the API call `https://api.cborg.lbl.gov/model/info`. Note that the underlying model name is also returned by the API when making requests to any model.

#### How do I send a batch inference request?

Batch inference requests are not supported by the CBorg API at this time.

#### I'm getting a timeout error. How can I handle slow requests?

**Method 1**: Icrease the timeout by adjusting the `request_timeout` parameter, e.g.:

{{< highlight python >}}
client = openai.ChatCompletion.create(
    model=MODEL,
    messages=[{ “role”: “user”, “content”: prompt }],
    request_timeout=600,
)
{{< / highlight >}}

**Method 2**: Use the streaming response mode which will send back partial chunks of data as they are processed:

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

#### How do I handle occasional network errors?

The CBorg API is a network service - requests may fail due to network interruptions and system maintenance events.

To improve the robustness of your code, a retry-loop with a backoff wait time is recommended, e.g.:

{{< highlight python>}}
# loop until max_retry
n = 0
max_retry = 10

while True:

    n += 1

    try:
        response = client.chat.completions.create(
            model=model,
            messages=messages,
            stream=True,
            timeout=600
        )

        content = []
        for chunk in response:
            if chunk.choices[0].delta.content is not None:
                content.append(chunk.choices[0].delta.content)

        return ''.join(content)

    except Exception as e:
        if n < max_retry:
            print(f"CBORG API ERROR(Attempt {n}/{max_retry}):", str(e))
            time.sleep(max(1,n*5)) # sleep wait will increase by 5 seconds with each failure
            n += 1
        else:
            # giving up and raising the Exception
            raise e
{{< / highlight >}}

#### I received message: "Invalid API Key Error" - How do I confirm my key is valid?

When using your CBorg key with OpenAI-API-Compatible applications and/or libraries,
*you must override the Base URL* to the CBorg API server at https://api.cborg.lbl.gov - otherwise these apps will reach out to OpenAI's servers which will reject your key!

**Note**: If your client is on LBL-Net you can use https://api-local.cborg.lbl.gov
which provides a direct network path without relaying your request through Cloudflare!

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current key is valid using `/key/info`, e.g.;

{{< highlight bash >}}
curl --location "https://api.cborg.lbl.gov/key/info" --header "Authorization: Bearer $CBORG_API_KEY"
{{< /highlight >}}

#### How do I send images to a vision model?

{{< highlight python >}}
import openai
import os

client = openai.OpenAI(
    api_key=os.environ.get('CBORG_API_KEY'),
    base_url="https://api.cborg.lbl.gov"
)

import base64
from io import BytesIO

def encode_file(file):
    import base64
    with open(file, "rb") as fp:
        return base64.b64encode(fp.read()).decode("utf-8")

response = client.chat.completions.create(
    model="lbl/cborg-vision", # can set this to any model that supports vision
    messages = [

        {
            "role": "user",
            "content": [
                { "type": "text", "text": "Describe the picture." },
                { "type": "image_url", "image_url": { "url": "data:image/png;base64," + encode_file('image.png') } }
            ]
        }
    ],
    temperature=0.0,
    stream=False
)

print(response)
{{< /highlight>}}


