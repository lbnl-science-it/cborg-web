---
title: "Using CBorg with OpenAI Codex CLI"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### 1. Configure OpenAI keys

{{< highlight bash >}}
export OPENAI_API_KEY=$CBORG_API_KEY
export OPENAI_BASE_URL=https://api.cborg.lbl.gov
{{< /highlight >}}

#### 2. Restart shell and verify key settings

{{< highlight bash >}}
env | grep OPENAI
{{< /highlight >}}

#### 3. Start Codex

{{< highlight bash >}}
cd my-project
codex
{{< /highlight >}}

**Note:** The default model is o4-mini (recommended). The model can be configured in a .codex file or passing the --model argument.

For more information see [OpenAI Codex Github](https://github.com/openai/codex)
