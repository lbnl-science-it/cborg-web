---
title: "CBorg API vs Cloud Project"
# meta title
meta_title: ""
# meta description
description: "Comparing the CBorg API Proxy with a self-managed Cloud Project for LLM inference"
# save as draft
draft: false
---

{{< notice "note" >}}
Got a question? Email us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or join the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7)
{{< / notice >}}

There are two primary ways to get **programmatic API access** to LLM models at Berkeley Lab: through the **CBorg API Proxy** or through a **self-managed Cloud Project** (GCP or AWS). This page compares the two approaches to help you decide which is the best fit for your use case. Note: this page is specifically about API access for developers and automated workflows — if you are looking for interactive chat access, see [CBorg Chat](/tools_cborgchat) or other [Tools](/tools).

---

#### CBorg API Proxy

The CBorg API Proxy is a managed service operated by the IT Division. It provides a single OpenAI-compatible API endpoint that routes requests to a variety of commercial and on-premises models.

**Key Features:**

- **More models available** — includes OpenAI, xAI, Google Gemini, and Anthropic Claude models through a single endpoint
- **Managed model list** — we keep the list of available models up to date as new versions are released
- **Budget enforcement** — we manage budget controls so you don't accidentally exceed your spending limit
- **$50/month in free usage per user** — every user gets a free monthly allocation
- **On-prem zero-cost models** — the following models are hosted on-premises and have no per-token cost:
  - `gpt-oss-120b`
  - `gemini-4`
  - `nomic-embed-text`
  - `nomic-embed-code`

**Considerations:**

- May go offline briefly for maintenance
- Acceptable for research purposes but not intended to support "critical infrastructure"

---

#### Cloud Project (GCP / AWS)

A Cloud Project gives you a dedicated GCP or AWS account attached to your PID, where you manage your own model access and configuration.

**Key Features:**

- **Lower inference cost** — cost of LLM inference may be around 10% lower than the "retail" cost charged by CBorg
- **High availability** — >99.99% uptime; cloud services will almost never go offline
- **Data isolation** — your prompts do not flow through the CBorg system
- **Dedicated inference bandwidth** — if you need to run many prompts in parallel at a high sustained rate
- **$25/month in free usage per project**

**Considerations:**

- **Self-managed** — you are responsible for:
  - Setting up and monitoring budget alerts and cost controls
  - Setting up API keys / service accounts to access models
  - Deploying new models when they come out
  - Generally being responsible for configuration and security
- **No access to OpenAI models** — Gemini, Claude, AWS Nova, Cohere and others are available, but OpenAI models are not

---

#### Summary Comparison

| Feature | CBorg API Proxy | Cloud Project |
|---|---|---|
| **Available Models** | OpenAI, xAI, Gemini, Claude, on-prem | Gemini, Claude, AWS Nova, Cohere, others (no OpenAI) |
| **Free Usage** | $50/month per user | $25/month per project |
| **Model Management** | Managed by IT Division | Self-managed |
| **Budget Controls** | Managed by IT Division | Self-managed |
| **On-Prem Models** | ✅ Zero cost | ❌ Not available |
| **Uptime** | May have brief maintenance windows | >99.99% |
| **Data Isolation** | Prompts routed through CBorg | Full isolation |
| **Inference Cost** | Standard retail pricing | ~10% lower |
| **Parallel Throughput** | Shared bandwidth | Dedicated bandwidth |
| **Use Case** | Research, prototyping, general use | Critical infrastructure, high-throughput, sensitive data |

---

#### Which should I choose?

- **Choose CBorg API** if you want a simple, managed experience with access to the widest range of models including OpenAI, free on-prem models, and automatic budget controls.
- **Choose a Cloud Project** if you need high availability for critical infrastructure, dedicated inference bandwidth, data isolation, lower per-token costs at scale, or processing of sensitive data (ECI, CUI) with approval from [IT Policy](mailto:itpolicy@lbl.gov).

To get started with a Cloud Project, email [scienceit@lbl.gov](mailto:scienceit@lbl.gov).
