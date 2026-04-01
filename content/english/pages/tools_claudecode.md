---
title: "Claude Code with CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

### API Cost Optimization

Claude models can be very expensive to operate, however, many optimizations exist that can substantially reduce the cost of using these models.

According to Anthropic, the average cost of using ClaudeCode is $6 per day. However, incorrect usage patterns can cause token utilization to be higher. Common issues include:

- Having too many MCP servers
- Over-use of CLAUDE.md instead of skills
- Not using language-aware code intelligence plugins
- Not clearing context between tasks
- Using a overpowered model for the task

A comprehensive overview is available here: https://code.claude.com/docs/en/costs

## 1. Set Environment Variables

Set the following variables in your environment:

```bash
# Set authorization and base URL
export ANTHROPIC_AUTH_TOKEN=$CBORG_API_KEY
export ANTHROPIC_BASE_URL=https://api.cborg.lbl.gov

# Model selection -- set to latest version of each model
# NOTE: You will need to update these each time a new model is released
# NOTE: Other models can be used, but ClaudeCode will incorrectly calculate API costs
export ANTHROPIC_DEFAULT_HAIKU_MODEL=claude-haiku-4-5
export ANTHROPIC_DEFAULT_SONNET_MODEL=claude-sonnet-4-6
export ANTHROPIC_DEFAULT_OPUS_MODEL=claude-opus-4-6

# Default conversation model
export ANTHROPIC_MODEL=claude-sonnet-4-6

# Default subagent model
export CLAUDE_CODE_SUBAGENT_MODEL=claude-haiku-4-5

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

