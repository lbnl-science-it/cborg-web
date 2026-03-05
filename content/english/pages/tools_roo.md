---
title: "Using Roo Code with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

#### 1. Install Roo Code

Install the [Roo Code Extension](https://docs.roocode.com/) for VS Code.

#### 2. Configure Provider

1. Open the **Settings** menu.
2. Go to **Providers**
3. Click **+** to create a new profile
4. Name the profile something appropriate, e.g. '**CBorg Coder**' (can be changed later)
5. For API Provider select **LiteLLM**
6. Set Base URL to **https://api.cborg.lbl.gov**
6. Add your CBORG_API_KEY to LiteLLM API Key
7. Click **Refresh Models**
8. Select the desired model

For more information please consult the RooCode documentation: [Using LiteLLM with RooCode](https://docs.roocode.com/providers/litellm)

## Troubleshooting Tips

### Gemini Models

- The cache setting in RooCode is not supported. These models automatically apply caching discounts.

### Preventing Common Errors

If you have issues with API errors, add the following to your global rules: `~/.roo/rules/rules.md`.

```bash
## Chat compatibility

Make sure to always return an assistant message in your responses.

## Diff-based Editing

When targeting text for a diff, copy the exact lines from the source file. The diff tool requires a 100% string match to apply the edit. Do not strip out newlines (\n) or combine multiple lines into a single continuous string."
```

