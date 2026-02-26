# Instructions for rebuilding the models.md page

When asked by the user to "rebuild the model page", examine the JSON dump of the model info provided by the user, and then rewrite or edit the models.md page.

If you don't see the JSON dump ask the user to provide it.

Begin the page with the following header:

```markdown
---
title: "AI Models"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI models available through the CBORG AI Portal"
# save as draft
draft: false
---

## Available Models

**Model Licensing Terms**

**Enterprise** = Model usage is licensed under UCOP and/or DOE negotiated enterprise agreements. Model provider will not use your data for training. Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). May be approved for protected R&D information including ECI or S&T Matrix as part of an approved Access Plan. Please contact [IT Policy](mailto:itpolicy@lbl.gov) for more information. 

**Commercial** = Model usage is licensed under non-negotiated standard commercial agreements. Model providers will not use your data for training. Acceptable for use with non-sensitive open scientific data and pre-publication research. No S&T or ECI or anything with FN or sponsor-specified protections permitted. For details consult [IT Policy AI Tool Security Levels](https://docs.google.com/spreadsheets/d/1l-ZX0wAajcaQClKd6tAPxUDQUQhnj7CMTSYoR-J-cmc/edit?gid=0#gid=0)

```

Then generate a model table like so:

```markdown
| Provider                 | Creator        | Name     | Alias       | Input/Output | Vision  | Tools | Cost (I/O) | License | 
| ---------------          | :------------: | :--------: ----------- | :-----:      | :---:   | :---- | :---:      | :-----: |
| LBL IT Division          | Meta           | Llama 4  | lbl/llama-4 | 128K / 8K    | Y       | Y     | $0 / $0    | E       |
...
```

## Providers:

LBL IT Division (prefix 'lbl/' or provider=lbl - many with openai/ and a model name that is not in the OpenAI family are "openai-compatible" self hosted by LBL IT)
OpenAI (no prefix, provider=openai, all common OpenAI model aliases)
Google Vertex AI (prefix google/ or provider=google)
Amazon Bedrock (prefix amazon/ or provider=amazon)
Microsoft Azure (prefix azure/)
xAI (prefix xai/ or provider=xai)
Unspecified (fallback if you can't determine from the above)

Sort the table by provider, and then by model version number descending.

This concludes the models.md page. Write the changes to the file.

