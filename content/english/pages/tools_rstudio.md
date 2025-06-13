---
title: "AI Tools"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### gptstudio in RStudio

Chat and coding functions integrated into RStudio

##### 1. Setup .Renviron file:

{{< highlight bash >}}
require(usethis)
edit_r_environ()
{{< /highlight >}}

Add your API key, and set OPEN_AI_API_URL to CBorg

{{< highlight bash >}}
OPENAI_API_KEY="sk-..."
OPENAI_API_URL="https://api.cborg.lbl.gov/v1"
{{< /highlight >}}

##### 2. Install the *Development Version* of gptstudio

As of Jun 12th, 2025 the default version of gptstudio does not support OpenAI-compatible servers (i.e., the CBorg API Server). The development version of gptstudio is required.

Remove the default version, if already installed:

{{< highlight bash >}}
remove.packages("gptstudio")
{{< /highlight >}}

Install development version using pak:

{{< highlight bash >}}
install pakinstall.packages("pak")
install dev version of gptstudiopak::pak("MichelNivard/gptstudio")
{{< /highlight >}}

##### 3. Start gptstudio Chat

Note: the port number of the shiny background process (shown as *3442* below) will change on each startup - so, this line of code cannot be hard coded in a file - you must click on the link in RStudio console when starting up the Chat.

{{< highlight bash >}}
gptstudio::gptstudio_chat()
rstudioapi::viewer("http://127.0.0.1:3442")
{{< /highlight >}}

You can then configure the models in the Chat UI by clicking the ">" button in the top left corner of that Viewer pane.

Recommended model: openai/gpt-4.1

##### Troubleshooting

Make sure that the `promises` package is at least version 1.3.3

