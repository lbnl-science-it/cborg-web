---
title: "AI Tools"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

# CBorg AI-Powered AI Tools

----

### Coming Soon / Work In Progress

- **PDF Reader:** Convert PDFs to Markdown and LaTeX for ingestion into LLM
- **LabGPT:** Chatbot grounded with Berkeley Lab internal knowledgebase.
- **Web Scraping Demo:** Automatically scrape news articles into JSON
- **GraphRAG UI:** Convert documents into knowledge base for advanced RAG queries
- **Stable Diffusion / FLUX:** Image generation tool

----

### Available Now

#### CBorg Chat

Use ChatGPT, Gemini, Anthropic, Llama3 and more.

{{< button "CBorg Chat" "https://chat.cborg.lbl.gov" >}}

----

#### CBorg API Service

Use CBorg LLMs from your own app or build your own LLM-powered programs.1

- [Request API Key](/api_request)
- [API Examples](/api_examples)
- [API_FAQ](/api_faq)

{{< button "CBorg API Swagger Documentation" "https://api.cborg.lbl.gov/" >}}

----

#### CBorg Client

Reverse proxy service that streamlines the connection between your local machine and the CBorg API server

  - Inject API keys automatically from environment variable - no need to save keys in each application
  - Detect when client is connected to LBL-net and automatically switch to locally-routed endpoint

{{< button "CBorg Client GitHub Project" "https://github.com/lbnl-science-it/cborg-client" >}}

----

#### VS Code Continue Plugin (Beta)

  Use the popular [VS Code Continue Plugin](https://www.continue.dev/) with the CBorg API Server.

  - Easy setup: provides chat and editor functions
  - Advanced setup: provides tab-autocompletion and indexing, using CBorg Client Service (see above)

{{< button "VS Code Continue Support on CBorg Client GitHub Project" "https://github.com/lbnl-science-it/cborg-client" >}}

----

#### Omni-Engineer (Experimental)

Coding assistant capable of editing files in-place using simple commands. Best results with Claude Sonnet.

{{< button "Omni Engineer GitHub Project" "https://github.com/Doriandarko/omni-engineer/tree/main" >}}

To setup, change main.py endpoint and models as follows:

{{< highlight python >}}
client = OpenAI(
    base_url="https://api.cborg.lbl.gov",
    api_key=os.getenv("CBORG_API_KEY"),
)

DEFAULT_MODEL = "lbl/cborg-coder:latest"
EDITOR_MODEL = "lbl/cborg-coder:latest"
{{< /highlight >}}

