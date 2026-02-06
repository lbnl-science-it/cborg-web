---
title: "Claude Code with CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### 1. Set the following variables in your environment:

Note that using the "official" model names as per below is recommended so that Claude Code calculates costs correctly.  Use of aliases e.g. anthropic/claude-sonnet will work but the tools' cost estimates may be incorrect.

{{< highlight bash >}} 
# set authorization and base URL
export ANTHROPIC_AUTH_TOKEN=$CBORG_API_KEY
export ANTHROPIC_BASE_URL=https://api.cborg.lbl.gov

# set fast model - this is only used for minor tasks like documentation
export ANTHROPIC_SMALL_FAST_MODEL=claude-haiku-4-5

# set main model - sonnet is recommended
# you can also try opus but its more expensive
export ANTHROPIC_MODEL=claude-sonnet-4-5

# alternative configuration (free to use with LBL-hosted model)
export ANTHROPIC_MODEL=lbl/cborg-coder

# recommended setting
export DISABLE_NON_ESSENTIAL_MODEL_CALLS=1

# recommended setting
export DISABLE_TELEMETRY=1

# recommended setting for compatibility
export CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1

# recommended setting to reduce model throttling
# higher limits can be used but may cause prompts to be rejected
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=8192
{{< /highlight >}}

#### 2. Restart your shell and verify that the environment variables are now present.

{{< highlight bash >}}
env | grep ANTHROPIC
{{< /highlight >}}

#### 3. Now start Claude Code in your project directory.

{{< highlight bash >}}
cd my-project
claude
{{< /highlight >}}

#### 4. Optional: Install VS Code Extension

If you are a VS Code user, install "Claude Code for VSCode" extension. When claude is run through the VS Code terminal, it will use VS Code to display highlighted diffs for approval.

#### Additional Notes

**Note:** It is strongly recommended to use version control (e.g. Git) with Claude Code projects.

**Note:** It is recommended to use Claude Code with the official Anthropic models as shown in the above configuration. However, Claude Code may also work with non-Anthropic models via CBorg API.

**Budget Issues:** Heavy use of Claude Code may quickly exhaust your API usage credits. Direct access to Claude models can be configured via a GCP or AWS cloud project. To get started, please contact [Science IT Consulting](scienceit@lbl.gov) with a PID to use for recharges and we will help you get setup with a cloud project.

