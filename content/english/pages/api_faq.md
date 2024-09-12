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

#### 3. How do I check my key usage?

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current spend with `/key/info`, e.g.;

```
curl --location 'http://api.cborg.lbl.gov/key/info' --header 'Authorization: Bearer $CBORG_API_KEY'
```

You can also calculate the estimated cost of an API call, before making the call, using /spend/calculate.

The full API interface is documented here: [CBORG API Documentation](https://api.cborg.lbl.gov/)

LBL-hosted models (anything model name starting with `/lbl`) are hosted in our on-prem datacenter therefore the cost will always return zero for these models.



