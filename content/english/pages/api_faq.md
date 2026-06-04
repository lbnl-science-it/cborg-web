---
title: "API Usage Guide"
# meta title
meta_title: ""
# meta description
description: "Guide to using the CBorg API: on-prem models, network access, rate limits, error handling, and common questions"
# save as draft
draft: false
---

{{< notice "note" >}}
Got a question? Email us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or join the [CBorg Users Chat](https://chat.google.com/room/AAQAqGsqgfQ?cls=7) group on Google Workspace.
{{< / notice >}}

The full interactive API reference is at [api.cborg.lbl.gov](https://api.cborg.lbl.gov/). Wondering whether to use CBorg or get your own cloud project? See [CBorg vs Cloud](/api_cborgvscloud).

---

## LBL On-Premises Models

The CBorg API provides access to AI models hosted on-premises at Lawrence Berkeley National Laboratory. These models run entirely within LBL infrastructure -- no data leaves the lab network -- and are **free to use** with no API cost.

### Recommended Model Aliases

Use the **`lbl/cborg-*` aliases** rather than referencing underlying model names directly. Aliases are mapped to specific configurations that may be updated over time (e.g. when a newer model becomes available), so your code stays robust without changes.

#### Chat & Reasoning Models

| Model Alias | Description |
| --- | --- |
| `lbl/cborg-chat` | Optimized for low latency and streaming; best for interactive chat applications |
| `lbl/cborg-coder` | Highest quality reasoning with low latency and streaming; best for coding tasks |
| `lbl/cborg-vision` | Optimized for visual question answering (vision + reasoning) |
| `lbl/cborg-deepthought` | Highest quality reasoning with high throughput; best for complex analytical tasks |
| `lbl/cborg-mini` | Optimized for lightweight tasks with small context window |

#### Specialized Models

| Model Alias | Description |
| --- | --- |
| `lbl/cborg-ocr` | Optimized for image-to-text conversion throughput without reasoning |

### Embedding Models

{{< notice "warning" >}}
**Embeddings are not portable across models.** Different embedding models produce incompatible vector spaces. Pin your application to a specific embedding model name and avoid switching models without re-embedding your data.
{{< / notice >}}

| Model | Dimensions | Description |
| --- | :---: | --- |
| `nomic-embed-text` | 768 | Good general-purpose text embedding for small-to-medium context |
| `nomic-embed-vision` | 768 | Image embedding model; shares the same embedding space as `nomic-embed-text`, enabling cross-modal retrieval |
| `nomic-embed-code` | ~3100 | Large embedding model optimized for source code |

Because `nomic-embed-text` and `nomic-embed-vision` share the same embedding space, you can embed both text and images and compare them directly -- useful for multimodal search and retrieval.

### Parallelism & Rate Limits

Limit your application to **5 parallel requests** to on-premises models. Exceeding this will result in a `429 Rate Limit Exceeded` error.

### Long-Running & Agentic Workloads

It is fine to run agents and automated pipelines around the clock against on-premises models. There is no time-of-day restriction.

### Handling Rate Limit and Network Errors

{{< notice "warning" >}}
On-premises models may occasionally be taken offline for maintenance or updates. Your application should handle network errors gracefully and wait for service to be restored rather than failing immediately.
{{< / notice >}}

Use **exponential backoff** for `429 Too Many Requests` errors. For network-level errors (connection refused, timeouts, service unavailable), retry indefinitely with a capped backoff -- the service will come back online after maintenance.

Example using the Python `tenacity` library:

{{< highlight python >}}
import openai
import os
import httpx
from tenacity import (
    retry,
    wait_exponential,
    stop_after_attempt,
    retry_if_exception_type,
    retry_any,
)

client = openai.OpenAI(
    base_url="https://api.cborg.lbl.gov",
    api_key=os.environ["CBORG_API_KEY"],
)

# Retry on rate limits (up to 6 attempts) and on network/connection errors
# (unlimited retries -- wait for the service to come back after maintenance).
@retry(
    retry=retry_if_exception_type(openai.RateLimitError),
    wait=wait_exponential(multiplier=1, min=2, max=60),
    stop=stop_after_attempt(6),
)
@retry(
    retry=retry_any(
        retry_if_exception_type(openai.APIConnectionError),
        retry_if_exception_type(openai.APIStatusError),
        retry_if_exception_type(httpx.ConnectError),
        retry_if_exception_type(httpx.RemoteProtocolError),
    ),
    wait=wait_exponential(multiplier=2, min=5, max=120),
    # No stop= here: keep retrying until the service is restored
)
def chat(prompt: str) -> str:
    response = client.chat.completions.create(
        model="lbl/cborg-chat",
        messages=[{"role": "user", "content": prompt}],
    )
    return response.choices[0].message.content

print(chat("Summarize the key findings of my experiment."))
{{< /highlight >}}

The inner decorator retries indefinitely on connection and protocol errors (backing off up to 2 minutes between attempts), so a long-running agent will automatically resume once the model service is restored after maintenance.

---

## Network Access & Connectivity

#### What network do I need to be on to use the CBorg API?

The CBorg API is accessible from **LBLnet**, **VPN**, and other trusted partner networks. If you are already on one of these networks, no additional steps are required.

#### I'm not on LBLnet or VPN — can I still use the API?

Yes. You can authorize your IP address by logging in to [https://api.cborg.lbl.gov/key/manage](https://api.cborg.lbl.gov/key/manage) and adding your current IP address.

{{< notice "warning" >}}
**Note:** IP-based authorization may not work correctly for some legacy applications that only communicate using IPv4.
{{< / notice >}}

#### I'm using Windows Subsystem for Linux (WSL) with Cisco VPN and my Python script can't reach the API

See the dedicated [Using CBorg with WSL](/tools_wsl2) page for full instructions, including how to enable mirrored network mode and how to force IPv4 or IPv6 connections.

---

## API Keys & Usage

#### How should I securely store the API key?

API keys must be stored securely. Do not put raw API keys into your source code! Use environment variables.

Read this: [Best Practices for API Key Security](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)

#### How do I check my key budget and spend?

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current spend with `/user/info`, e.g.;

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/user/info' --header "Authorization: Bearer $CBORG_API_KEY"
{{< /highlight >}}

Note: You must allow up to 5 seconds since your last API call for spend logs to be written to the database.

#### I reached my spend limit and free models don't work now!

Please email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) for assistance.

#### I reached my spend limit - can I get a higher budget?

First, keep an eye on your budget to understand the costs. You can check [https://api.cborg.lbl.gov/key/manage](https://api.cborg.lbl.gov/key/manage) to view your current real-time spend.

Second, try to optimize your model inference cost by selecting the lowest cost model that can perform your task correctly. Read [Model Selection Overview](https://cborg.lbl.gov/tools_ai_101) for more information.

Finally, if you have a PID for recharges the funding to support your budget, please contact Science IT Consulting at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) to discuss your project - we can help get you set up with a GCP or AWS project to access the needed models directly.

#### How do I retreive all available models?

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/model/info' --header "Authorization: Bearer $CBORG_API_KEY" | jq | less
{{< /highlight >}}

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


