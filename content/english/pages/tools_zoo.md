---
title: "Using Zoo Code with CBorg"
# meta title
# meta_title: ""
# meta description
# save as draft
draft: false
---

Zoo Code (formerly RooCode) is a 100% open-source AI coding assistant for VS Code.

## Migrating from RooCode

If you were previously using RooCode, follow these steps to migrate your settings:

1. Open VS Code with RooCode installed
2. Go to **Settings**
3. Go to **About RooCode**
4. Click **Export Settings** and save to a file
5. Install **ZooCode** via the VS Code Extensions Marketplace
6. Open Zoo Code settings and **Import** the saved settings file
7. Uninstall RooCode

---

#### 1. Install Zoo Code

Install the [Zoo Code Extension](https://marketplace.visualstudio.com/items?itemName=ZooCode.zoo-code) from the VS Code Extensions Marketplace.

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

## Automated Setup via Makefile

For a faster setup, use the [`cborg-client`](https://github.com/lbnl-science-it/cborg-client) repository on GitHub. It includes a `Makefile` in the `zoocode/` directory that generates a ready-to-import `zoo-code-settings.json` file pre-configured with CBorg models.

**Requirements:** `CBORG_API_KEY` environment variable set, plus `jq` and `envsubst` installed.

```bash
git clone https://github.com/lbnl-science-it/cborg-client.git
cd cborg-client/zoocode
export CBORG_API_KEY=<your-key>
make
```

Then import the generated file via **Zoo Code > Settings > About Zoo Code > Manage Settings > Import**.

Optional providers are included automatically when credentials are detected:

- **AmSC** -- set `AMSC_I2_API_KEY` for American Science Cloud models
- **GCP/Vertex AI** -- detected from `~/.zoo/application_default_credentials.json` or `GOOGLE_APPLICATION_CREDENTIALS`

### Codebase Indexing with Qdrant

When `podman` or `docker` is detected during `make`, you will be prompted to enable codebase indexing. If enabled, Zoo Code uses a local [Qdrant](https://qdrant.tech/) vector database to index your codebase for context-aware completions.

> **Advanced users only.** Codebase indexing is not needed for standard functionality. Code indexing enables faster code search in large code bases.

Before indexing, start Qdrant and the local embeddings proxy:

```bash
CBORG_API_KEY=<your-key> ./start-qdrant.sh
```

## Recommended Settings

To improve context caching and reduce cost, the following settings are recommended:

### Context Menu

- Open Tabs Context Limit: 1
- Workspace Files Context Limit: 10
- Git Status Max Files: 1
- Maximum diagnostic messages: 10
- Include current time in context: DISABLE
- Include current cost in context: DISABLE
- Context condensing: 50% or around 100K tokens
- Enable subfolder rules: ON

### Terminal Menu

- Command output preview size: Small

### MCP Servers

- MCP servers consume significant amount of context. Only enable MCP servers you are actively using.

### Models for Low Budget

- Gemini Flash High (gemini-flash-high)
- Claude Haiku High (claude-haiku-high)
- GPT 5.4 Nano (gpt-5.4-nano)

## Troubleshooting Tips

### Gemini Models

- The cache setting in Zoo Code is not supported for Gemini models. These models automatically apply caching discounts, therefore you can leave "Enable prompt caching" disabled.

### Preventing Common Errors

If you have issues with API errors, add the following to your global rules: `~/.zoo/rules/rules.md`.

```bash
## Chat compatibility

Make sure to always return an assistant message in your responses.

## Diff-based Editing

When targeting text for a diff, copy the exact lines from the source file. The diff tool requires a 100% string match to apply the edit. Do not strip out newlines (\n) or combine multiple lines into a single continuous string."
```

