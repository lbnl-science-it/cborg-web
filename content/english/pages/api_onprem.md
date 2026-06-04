---
title: "LBL On-Premises Models"
# meta title
meta_title: ""
# meta description
description: "Guide to using LBL-hosted on-premises AI models via the CBORG API"
# save as draft
draft: false
---

{{< notice "note" >}}
Questions? Email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or join the [CBorg Users Chat](https://chat.google.com/room/AAQAqGsqgfQ?cls=7) group on Google Workspace.
{{< / notice >}}

The CBORG API provides access to a set of AI models hosted on-premises at Lawrence Berkeley National Laboratory. These models run entirely within LBL infrastructure — no data leaves the lab network. These models are also free to use with no API cost.

---

## Recommended Model Aliases

We recommend using the **`lbl/cborg-*` model aliases** rather than referencing underlying model names directly. The aliases are mapped to specific model configurations that may be updated over time (e.g. when a newer or better model becomes available). Using the aliases ensures your application remains robust against future changes and version updates without requiring code changes on your end.

### Chat & Reasoning Models

| Model Alias | Description |
| --- | --- |
| `lbl/cborg-chat` | Optimized for low latency and streaming; best for interactive chat applications |
| `lbl/cborg-coder` | Highest quality reasoning with low latency and streaming; best for coding tasks |
| `lbl/cborg-vision` | Optimized for visual question answering (vision + reasoning) |
| `lbl/cborg-deepthought` | Highest quality reasoning with high throughput; best for complex analytical tasks |
| `lbl/cborg-mini` | Optimized for lightweight tasks with small context window |

### Specialized Models

| Model Alias | Description |
| --- | --- |
| `lbl/cborg-ocr` | Optimized for image-to-text conversion throughput without reasoning |

---

## Embedding Models

{{< notice "warning" >}}
**Embeddings are not portable across models.** Because different embedding models produce incompatible vector spaces, we do not provide `cborg-branded` embedding aliases. You should pin your application to a specific embedding model name and avoid switching models without re-embedding your data.
{{< / notice >}}

The following embedding models are available on-premises:

| Model | Dimensions | Description |
| --- | :---: | --- |
| `nomic-embed-text` | 768 | Good general-purpose text embedding for small-to-medium context |
| `nomic-embed-vision` | 768 | Image embedding model; shares the same embedding space as `nomic-embed-text`, enabling cross-modal retrieval |
| `nomic-embed-code` | ~3100 | Large embedding model optimized for source code |

Because `nomic-embed-text` and `nomic-embed-vision` share the same embedding space, you can embed both text and images and compare them directly — useful for multimodal search and retrieval applications.

---

## General Usage Tips

### Parallelism

Limit your application to **5 parallel requests** to on-premises models. Exceeding this will result in a 429 Rate Limit Exceeded error.

### Long-Running & Agentic Workloads

It is perfectly fine to run agents and automated pipelines around the clock against the on-premises models. There is no time-of-day restriction.

### Handling Rate Limit and Network Errors

{{< notice "warning" >}}
On-premises models may occasionally be taken offline for maintenance or updates. Your application should handle network errors gracefully and wait for service to be restored rather than failing immediately.
{{< / notice >}}

If you receive a `429 Too Many Requests` error, use **exponential backoff** to retry your requests. For network-level errors (connection refused, timeouts, service unavailable), your application should retry indefinitely with a capped backoff — the service will come back online after maintenance completes.

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
# (unlimited retries — wait for the service to come back after maintenance).
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

### Quick Start Example

{{< highlight python >}}
import openai
import os

client = openai.OpenAI(
    base_url="https://api.cborg.lbl.gov",
    api_key=os.environ["CBORG_API_KEY"],
)

# Use a cborg alias — robust against future model updates
response = client.chat.completions.create(
    model="lbl/cborg-chat",
    messages=[{"role": "user", "content": "Hello! What can you help me with?"}],
    stream=True,
)

for chunk in response:
    print(chunk.choices[0].delta.content or "", end="", flush=True)
{{< /highlight >}}

---

## Support

For questions or assistance, contact the Science IT team:

- **Email:** [scienceit@lbl.gov](mailto:scienceit@lbl.gov)
- **Google Chat:** [CBorg Users Chat Group](https://chat.google.com/room/AAQAqGsqgfQ?cls=7)
