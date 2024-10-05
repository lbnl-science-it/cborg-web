---
title: "Frequently Asked Questions for API Users"
# meta title
meta_title: ""
# meta description
description: "Common questions regarding the CBorg API Service"
# save as draft
draft: false
---

**Note:** The full API interface is documented here: [CBorg API Documentation](https://api.cborg.lbl.gov/)

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

#### 3. I received message: "Invalid API Key Error" - How do I confirm my key is valid?

When using your CBorg key with OpenAI-API-Compatible applications and/or libraries,
*you must override the Base URL* to the CBorg API server at https://api.cborg.lbl.gov - otherwise these apps will reach out to OpenAI's servers which will reject your key!

**Note**: If your client is on LBL-Net you can use https://api-local.cborg.lbl.gov
which provides a direct network path without relaying your request through Cloudflare!

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current key is valid using `/key/info`, e.g.;

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/key/info' --header 'Authorization: Bearer $CBORG_API_KEY'
{{< /highlight >}}

#### 4. How do I check my key budget and spend?

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current spend with `/key/info`, e.g.;

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/key/info' --header 'Authorization: Bearer $CBORG_API_KEY'
{{< /highlight >}}

You can also calculate the estimated cost of an API call, before making the call, using /spend/calculate.

LBL-hosted models (anything model name starting with `/lbl`) are hosted in our on-prem datacenter therefore the cost will always return zero for these models.

