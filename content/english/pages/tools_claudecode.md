---
title: "Claude Code with CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

## 1. Set Environment Variables

Set the following variables in your environment:

```bash
# Set authorization and base URL
export ANTHROPIC_AUTH_TOKEN=$CBORG_API_KEY
export ANTHROPIC_BASE_URL=https://api.cborg.lbl.gov

# Model selection -- using aliases to latest version of each model
export ANTHROPIC_DEFAULT_HAIKU_MODEL=claude-haiku
export ANTHROPIC_DEFAULT_SONNET_MODEL=claude-sonnet
export ANTHROPIC_DEFAULT_OPUS_MODEL=claude-opus

# Default conversation model
export ANTHROPIC_MODEL=claude-sonnet

# Default subagent model
export CLAUDE_CODE_SUBAGENT_MODEL=claude-haiku

# Recommended setting
export DISABLE_NON_ESSENTIAL_MODEL_CALLS=1

# Recommended setting
export DISABLE_TELEMETRY=1

# Recommended setting for compatibility
export CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1

# Recommended setting to reduce model throttling
# Higher max output tokens can be used but may cause prompts to be rejected with "too many tokens" error
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=8192

```

## 2. Verify Environment Variables

Restart your shell and verify that the environment variables are now present:

```bash
env | grep ANTHROPIC
```

## 3. Start Claude Code

Now start Claude Code in your project directory:

```bash
cd my-project
claude
```

## 4. Optional: Install VS Code Extension

If you are a VS Code user, install the "Claude Code for VSCode" extension. When `claude` is run through the VS Code terminal, it will use VS Code to display highlighted diffs for approval.

## 5. Optional: Run Claude Code with Gemini Flash

Set the following variables in your environment:

```bash
# Set authorization and base URL
export ANTHROPIC_AUTH_TOKEN=$CBORG_API_KEY
export ANTHROPIC_BASE_URL=https://api.cborg.lbl.gov

# Model selection -- using aliases to latest version of each model
export ANTHROPIC_DEFAULT_HAIKU_MODEL=gemini-flash-lite
export ANTHROPIC_DEFAULT_SONNET_MODEL=gemini-flash
export ANTHROPIC_DEFAULT_OPUS_MODEL=gemini-flash-high

# Default conversation model
export ANTHROPIC_MODEL=gemini-flash

# Default subagent model
export CLAUDE_CODE_SUBAGENT_MODEL=gemini-flash-lite

# Recommended setting
export DISABLE_NON_ESSENTIAL_MODEL_CALLS=1

# Recommended setting
export DISABLE_TELEMETRY=1

# Recommended setting for compatibility
export CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1

# Recommended setting to reduce model throttling
# Higher max output tokens can be used but may cause prompts to be rejected with "too many tokens" error
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=8192

```

