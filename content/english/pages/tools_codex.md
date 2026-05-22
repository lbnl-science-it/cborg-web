---
title: "Using CBorg with OpenAI Codex CLI"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### 1. Configure Codex

Add the following to `~/.codex/config.toml`:

{{< highlight toml >}}
profile="cborg-gpt-mini"

[model_providers.cborg]
name = "CBorg API"
base_url = "https://api.cborg.lbl.gov/v1"
env_key = "CBORG_API_KEY"
supports_websockets = false
wire_api = "responses"

[profiles.cborg-gpt-large]
model = "gpt-5.5"
model_reasoning_effort = "high"
model_provider = "cborg"
personality = "pragmatic"

[profiles.cborg-gpt-mini]
model = "gpt-5.4-mini"
model_reasoning_effort = "medium"
model_provider = "cborg"
personality = "pragmatic"

[profiles.cborg-gemini-pro]
model = "gemini-pro-high"
model_provider = "cborg"
personality = "pragmatic"

[profiles.cborg-gemini-flash]
model = "gemini-flash-high"
model_provider = "cborg"
personality = "pragmatic"

[profiles.openai-gpt-large]
model = "gpt-5.5"
model_reasoning_effort = "high"
personality = "pragmatic"

[profiles.openai-gpt-mini]
model = "gpt-5.4-mini"
model_reasoning_effort = "medium"
personality = "pragmatic"

[features]
fast_mode = false

[notice]
fast_default_opt_out = true
{{< /highlight >}}

The `cborg-*` profiles route through the CBorg API using your `CBORG_API_KEY`. The `openai-*` profiles use OpenAI directly via ChatGPT Enterprise sign-on.

#### 2. Start Codex

{{< highlight bash >}}
cd my-project
codex
{{< /highlight >}}

Switch profiles using the `--profile` flag, e.g.:

{{< highlight bash >}}
codex --profile cborg-gpt-large
codex --profile cborg-gemini-pro
{{< /highlight >}}

---

#### Tips for Reducing Costs

**1. Disable fast mode**

Fast mode costs 2.5x more than standard processing, and is only about 50% faster. The configuration above disables it by default via `fast_mode = false` in `[features]`. You can also toggle it at runtime using the `/fast` command.

**2. Use a smaller model for most tasks**

Only switch to a large model when necessary:

- `gpt-5.4-mini` with "medium" reasoning is around 1/10th the cost of `gpt-5.5` and is very performant — try to use the smaller model for most situations and switch to the large model only for the most challenging coding or debugging tasks.
- `gpt-5.3-codex` has nearly the same performance as `gpt-5.5` and is around 1/2 of the cost
- Use `/new` for each new task rather than allowing excessive context to accumulate
- Disable any unnecessary MCP servers and Skills
- Keep `AGENTS.md` files to a reasonable length and do not include instructions that mirror what models already do by default, such as "Write clean code."

**3. Recommended default configuration**

The configuration in step 1 above sets `cborg-gpt-mini` as the default profile, which uses a cost-effective model with fast mode disabled. Switch to a larger or alternative model only when needed using the `--profile` flag.
