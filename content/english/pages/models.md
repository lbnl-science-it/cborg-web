---
title: "AI Models"
# meta title
meta_title: ""
# meta description
description: "Details regarding AI models available through the CBORG AI Portal"
# save as draft
draft: false
---

## Available Models

*Last updated: 2026-02-26*

**Model Licensing Terms**

**Enterprise** = Model usage is licensed under UCOP and/or DOE negotiated enterprise agreements. Model provider will not use your data for training. Acceptable for use with Prudent-to-Protect (P2P) Information (e.g. pre-publication data). May be approved for protected R&D information including ECI or S&T Matrix as part of an approved Access Plan. Please contact [IT Policy](mailto:itpolicy@lbl.gov) for more information. 

**Commercial** = Model usage is licensed under non-negotiated standard commercial agreements. Model providers will not use your data for training. Acceptable for use with non-sensitive open scientific data and pre-publication research. No S&T or ECI or anything with FN or sponsor-specified protections permitted. For details consult [IT Policy AI Tool Security Levels](https://docs.google.com/spreadsheets/d/1l-ZX0wAajcaQClKd6tAPxUDQUQhnj7CMTSYoR-J-cmc/edit?gid=0#gid=0)

### Chat and Vision Models

| Provider                 | Creator        | Model ID                       | Input/Output   | Vision  | Tools | Cost (I/O)         | License |
| ------------------------ | :------------: | ------------------------------ | :------------: | :-----: | :---: | :----------------: | :-----: |
| Amazon Bedrock           | Anthropic      | amazon/claude-haiku-3-5        | 200K / 8.192K  | N       | Y     | $0.80 / $4.00      | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-haiku-4-5        | 200K / 64K     | Y       | Y     | $1.00 / $5.00      | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-haiku-4-5-high   | 200K / 64K     | Y       | Y     | $1.00 / $5.00      | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4           | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-1         | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-1-high    | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-5         | 200K / 8.192K  | Y       | Y     | $5.00 / $25.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-5-high    | 200K / 8.192K  | Y       | Y     | $5.00 / $25.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-6         | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-6-high    | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-opus-4-high      | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4         | 1M / 16.384K   | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4-5       | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4-5-high  | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4-6       | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4-6-high  | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Anthropic      | amazon/claude-sonnet-4-high    | 1M / 16.384K   | Y       | Y     | $3.00 / $15.00     | E       |
| Amazon Bedrock           | Meta           | amazon/llama-4-maverick        | 128K / 4.096K  | N       | Y     | $0.24 / $0.97      | E       |
| Amazon Bedrock           | Meta           | amazon/llama-4-scout           | 128K / 4.096K  | N       | Y     | $0.17 / $0.66      | E       |
| Amazon Bedrock           | Mistral AI     | mistral-large                  | 128K / 8.192K  | N       | Y     | $0.50 / $1.50      | E       |
| Amazon Bedrock           | Mistral AI     | mistral-large-3                | 128K / 8.192K  | N       | Y     | $0.50 / $1.50      | E       |
| Amazon Bedrock           | OpenAI         | amazon/gpt-oss-120b            | 128K / 128K    | N       | Y     | $0.15 / $0.60      | E       |
| Amazon Bedrock           | OpenAI         | amazon/gpt-oss-20b             | 128K / 128K    | N       | Y     | $0.07 / $0.30      | E       |
| Amazon Bedrock           | Unknown        | devstral                       | 256K / 256K    | N       | Y     | $0.40 / $2.00      | E       |
| Amazon Bedrock           | Unknown        | devstral-2                     | 256K / 256K    | N       | Y     | $0.40 / $2.00      | E       |
| Amazon Bedrock           | Unknown        | nemotron-nano-3                | 262.144K / 8.192K | N       | Y     | $0.06 / $0.24      | E       |
| Amazon Bedrock           | Unknown        | nemotron-nano-vl               | 128K / 8.192K  | Y       | N     | $0.20 / $0.60      | E       |
| Amazon Bedrock           | Unknown        | nova-micro                     | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Amazon Bedrock           | Unknown        | nova-micro-1                   | 128K / 10K     | N       | Y     | $0.04 / $0.14      | E       |
| Amazon Bedrock           | Unknown        | nova-premier                   | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Amazon Bedrock           | Unknown        | nova-premier-1                 | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Amazon Bedrock           | Unknown        | nova-pro                       | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Amazon Bedrock           | Unknown        | nova-pro-1                     | 300K / 10K     | Y       | Y     | $0.80 / $3.20      | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-haiku         | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-haiku-high    | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-opus          | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-opus-high     | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-sonnet        | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | anthropic/claude-sonnet-high   | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | claude-3-5-haiku               | 200K / 8.192K  | N       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | claude-haiku                   | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | claude-haiku-4-5               | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | claude-haiku-high              | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | claude-opus                    | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | claude-opus-4-0                | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | claude-opus-4-1                | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | claude-opus-4-5                | 200K / 8.192K  | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | claude-opus-4-6                | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | claude-opus-high               | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | claude-sonnet                  | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | claude-sonnet-4-5              | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | claude-sonnet-4-6              | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | claude-sonnet-high             | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-haiku-3-5        | 200K / 8.192K  | N       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | google/claude-haiku-4-5        | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | google/claude-haiku-4-5-high   | 200K / 8.192K  | Y       | Y     | $1.00 / $5.00      | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4           | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-1         | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-1-high    | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-5         | 200K / 8.192K  | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-5-high    | 200K / 8.192K  | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-6         | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-6-high    | 1M / 8.192K    | Y       | Y     | $5.00 / $25.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-opus-4-high      | 200K / 8.192K  | Y       | Y     | $15.00 / $75.00    | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4         | 1M / 16.384K   | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4-5       | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4-5-high  | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4-6       | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4-6-high  | 200K / 16.384K | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | Anthropic      | google/claude-sonnet-4-high    | 1M / 16.384K   | Y       | Y     | $3.00 / $15.00     | E       |
| Google Vertex AI         | DeepSeek       | google/deepseek-3.2            | 163.84K / 32.768K | N       | Y     | $0.56 / $1.68      | E       |
| Google Vertex AI         | DeepSeek       | google/deepseek-r1             | 65.336K / 8.192K | N       | Y     | $1.35 / $5.40      | E       |
| Google Vertex AI         | Google         | gemini-1.5-flash               | 1M / 8.192K    | Y       | Y     | $0.07 / $0.30      | E       |
| Google Vertex AI         | Google         | gemini-1.5-pro                 | 2.09715M / 8.192K | Y       | Y     | $1.25 / $5.00      | E       |
| Google Vertex AI         | Google         | gemini-2.0-flash               | 1.04858M / 8.192K | Y       | Y     | $0.10 / $0.40      | E       |
| Google Vertex AI         | Google         | gemini-2.0-flash-lite          | 1.04858M / 8.192K | Y       | Y     | $0.07 / $0.30      | E       |
| Google Vertex AI         | Google         | gemini-2.5-flash               | 1.04858M / 65.535K | Y       | Y     | $0.30 / $2.50      | E       |
| Google Vertex AI         | Google         | gemini-2.5-flash-high          | 1.04858M / 65.535K | Y       | Y     | $0.30 / $2.50      | E       |
| Google Vertex AI         | Google         | gemini-2.5-flash-image         | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Google Vertex AI         | Google         | gemini-2.5-flash-lite          | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Google Vertex AI         | Google         | gemini-2.5-pro                 | 1.04858M / 65.535K | Y       | Y     | $1.25 / $10.00     | E       |
| Google Vertex AI         | Google         | gemini-2.5-pro-high            | 1.04858M / 65.535K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-3-flash                 | 1.04858M / 65.535K | Y       | Y     | $0.50 / $3.00      | E       |
| Google Vertex AI         | Google         | gemini-3-flash-high            | 1.04858M / 65.535K | Y       | Y     | $0.50 / $3.00      | E       |
| Google Vertex AI         | Google         | gemini-3-pro                   | 1.04858M / 65.535K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-3-pro-high              | 1.04858M / 65.535K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-3.1-pro                 | 1.04858M / 65.536K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-3.1-pro-high            | 1.04858M / 65.536K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-embedding-001           | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Google Vertex AI         | Google         | gemini-flash                   | 1.04858M / 65.535K | Y       | Y     | $0.50 / $3.00      | E       |
| Google Vertex AI         | Google         | gemini-flash-high              | 1.04858M / 65.535K | Y       | Y     | $0.50 / $3.00      | E       |
| Google Vertex AI         | Google         | gemini-flash-image             | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Google Vertex AI         | Google         | gemini-pro                     | 1.04858M / 65.536K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-pro-high                | 1.04858M / 65.536K | Y       | Y     | $2.00 / $12.00     | E       |
| Google Vertex AI         | Meta           | google/llama-4-maverick        | 1M / 1M        | N       | Y     | $0.35 / $1.15      | E       |
| Google Vertex AI         | Mistral AI     | google/codestral               | 128K / 128K    | N       | Y     | $0.20 / $0.60      | E       |
| Google Vertex AI         | OpenAI         | google/gpt-oss-120b            | 131.072K / 32.768K | N       | N     | $0.15 / $0.60      | E       |
| Google Vertex AI         | OpenAI         | google/gpt-oss-120b-high       | 131.072K / 32.768K | N       | N     | $0 / $0            | E       |
| Google Vertex AI         | OpenAI         | google/gpt-oss-20b             | 131.072K / 32.768K | N       | N     | $0.07 / $0.30      | E       |
| Google Vertex AI         | OpenAI         | google/gpt-oss-20b-high        | 131.072K / 32.768K | N       | N     | $0.07 / $0.30      | E       |
| Google Vertex AI         | Qwen           | google/qwen-3                  | 262.144K / 16.384K | N       | Y     | $0.25 / $1.00      | E       |
| Google Vertex AI         | Qwen           | google/qwen-3-coder            | 262.144K / 32.768K | N       | Y     | $1.00 / $4.00      | E       |
| Google Vertex AI         | Unknown        | google/glm-4.7                 | 200K / 128K    | N       | Y     | $0.60 / $2.20      | E       |
| Google Vertex AI         | Unknown        | google/glm-5                   | 200K / 128K    | N       | Y     | $1.00 / $3.20      | E       |
| Google Vertex AI         | Unknown        | google/kimi-k2-thinking        | 256K / 256K    | N       | Y     | $0.60 / $2.50      | E       |
| Google Vertex AI         | Unknown        | google/minimax-m2              | 196.608K / 196.608K | N       | Y     | $0.30 / $1.20      | E       |
| Google Vertex AI         | Unknown        | text-embedding-004             | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | IBM            | lbl/granite-docling            | 8.192K / N/A   | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Meta           | Llama-4-Scout-17B-16E-Instruct | 131.072K / 8.192K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Meta           | lbl/Llama-4-Scout-17B-16E-Instruct | 131.072K / 8.192K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Meta           | lbl/llama                      | 131.072K / 8.192K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Meta           | lbl/llama-4-scout              | 131.072K / 8.192K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Meta           | meta/llama-4-scout             | 131.072K / 8.192K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | gpt                            | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| LBL IT Division          | OpenAI         | gpt-oss-120b                   | 131.072K / 131.072K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | gpt-oss-120b-high              | 131.072K / 131.072K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | gpt-oss-20b                    | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | gpt-oss-20b-high               | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | lbl/gpt-oss-120b               | 131.072K / 131.072K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | lbl/gpt-oss-120b-high          | 131.072K / 131.072K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | lbl/gpt-oss-120b-medium        | 131.072K / 131.072K | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | lbl/gpt-oss-20b                | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | OpenAI         | lbl/gpt-oss-20b-high           | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Unknown        | Nanonets-OCR                   | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Unknown        | lbl/Nanonets-OCR               | N/A / N/A      | N       | N     | $0 / $0            | E       |
| LBL IT Division          | Unknown        | lbl/jbei-publications-chat     | N/A / N/A      | N       | N     | $0 / $0            | E       |
| Microsoft Azure          | OpenAI         | azure/gpt-oss-120b             | N/A / 131.072K | N       | N     | $0.15 / $0.60      | E       |
| Microsoft Azure          | xAI            | azure/grok-3                   | N/A / N/A      | N       | N     | $3.00 / $15.00     | E       |
| Microsoft Azure          | xAI            | azure/grok-3-mini              | N/A / N/A      | N       | N     | $0.25 / $1.27      | E       |
| OpenAI                   | OpenAI         | gpt-4.1                        | 1.04758M / 32.768K | Y       | Y     | $2.00 / $8.00      | E       |
| OpenAI                   | OpenAI         | gpt-4.1-mini                   | 1.04758M / 32.768K | Y       | Y     | $0.40 / $1.60      | E       |
| OpenAI                   | OpenAI         | gpt-4.1-nano                   | 1.04758M / 32.768K | Y       | Y     | $0.10 / $0.40      | E       |
| OpenAI                   | OpenAI         | gpt-4o                         | 128K / 16.384K | Y       | Y     | $2.50 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-4o-mini                    | 128K / 16.384K | Y       | Y     | $0.15 / $0.60      | E       |
| OpenAI                   | OpenAI         | gpt-5                          | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5-chat                     | 128K / 16.384K | Y       | N     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5-codex                    | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5-high                     | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5-mini                     | 272K / 128K    | Y       | Y     | $0.25 / $2.00      | E       |
| OpenAI                   | OpenAI         | gpt-5-mini-high                | 272K / 128K    | Y       | Y     | $0.25 / $2.00      | E       |
| OpenAI                   | OpenAI         | gpt-5-nano                     | 272K / 128K    | Y       | Y     | $0.05 / $0.40      | E       |
| OpenAI                   | OpenAI         | gpt-5-nano-high                | 272K / 128K    | Y       | Y     | $0.05 / $0.40      | E       |
| OpenAI                   | OpenAI         | gpt-5.1                        | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.1-chat                   | 128K / 16.384K | Y       | N     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.1-codex                  | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.1-codex-max              | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.1-codex-mini             | 272K / 128K    | Y       | Y     | $0.25 / $2.00      | E       |
| OpenAI                   | OpenAI         | gpt-5.1-high                   | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2                        | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2-chat                   | 128K / 16.384K | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2-codex                  | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2-high                   | 272K / 128K    | Y       | Y     | $1.25 / $10.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2-pro                    | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.2-xhigh                  | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-5.3-codex                  | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-chat                       | 128K / 16.384K | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-codex                      | 272K / 128K    | Y       | Y     | $1.75 / $14.00     | E       |
| OpenAI                   | OpenAI         | gpt-mini                       | 272K / 128K    | Y       | Y     | $0.25 / $2.00      | E       |
| OpenAI                   | OpenAI         | gpt-nano                       | 272K / 128K    | Y       | Y     | $0.05 / $0.40      | E       |
| OpenAI                   | OpenAI         | o1                             | 200K / 100K    | Y       | Y     | $15.00 / $60.00    | E       |
| OpenAI                   | OpenAI         | o3                             | 200K / 100K    | Y       | Y     | $2.00 / $8.00      | E       |
| OpenAI                   | OpenAI         | o3-high                        | 200K / 100K    | Y       | Y     | $2.00 / $8.00      | E       |
| OpenAI                   | OpenAI         | o3-mini                        | 200K / 100K    | N       | Y     | $1.10 / $4.40      | E       |
| OpenAI                   | OpenAI         | o3-mini-high                   | 200K / 100K    | N       | Y     | $1.10 / $4.40      | E       |
| OpenAI                   | OpenAI         | o4-mini                        | 200K / 100K    | Y       | Y     | $1.10 / $4.40      | E       |
| OpenAI                   | OpenAI         | o4-mini-high                   | 200K / 100K    | Y       | Y     | $1.10 / $4.40      | E       |
| OpenAI                   | Unknown        | o1-high                        | 200K / 100K    | Y       | Y     | $15.00 / $60.00    | E       |
| OpenAI                   | Unknown        | o1-mini                        | 128K / 65.536K | Y       | N     | $1.10 / $4.40      | E       |
| OpenAI                   | Unknown        | o1-mini-high                   | 128K / 65.536K | Y       | N     | $1.10 / $4.40      | E       |
| xAI                      | xAI            | xai/grok-3                     | 131.072K / 131.072K | N       | Y     | $3.00 / $15.00     | C       |
| xAI                      | xAI            | xai/grok-3-mini                | 131.072K / 131.072K | N       | Y     | $0.30 / $0.50      | C       |
| xAI                      | xAI            | xai/grok-4-0709                | 256K / 256K    | N       | Y     | $3.00 / $15.00     | C       |
| xAI                      | xAI            | xai/grok-4-1-fast              | 2M / 2M        | Y       | Y     | $0.20 / $0.50      | C       |
| xAI                      | xAI            | xai/grok-4-1-fast-reasoning    | 2M / 2M        | Y       | Y     | $0.20 / $0.50      | C       |
| xAI                      | xAI            | xai/grok-code-fast-1           | 256K / 256K    | N       | Y     | $0.20 / $1.50      | C       |

### Image Generation Models

| Provider                 | Creator        | Model ID                       | Input/Output   | Cost (I/O)         | License |
| ------------------------ | :------------: | ------------------------------ | :------------: | :----------------: | :-----: |
| Google Vertex AI         | Google         | gemini-3-pro-image             | 65.536K / 32.768K | $2.00 / $12.00     | E       |
| Google Vertex AI         | Google         | gemini-pro-image               | 65.536K / 32.768K | $2.00 / $12.00     | E       |

### Vector Embedding Models

| Provider                 | Creator            | Model ID                 | Max Tokens | Cost    |
| ------------------------ | :----------------: | ------------------------ | :--------: | :-----: |
| LBL IT Division          | Unknown            | bge-m3                   | 8.192K     | Free    |
| Amazon Bedrock           | Cohere             | cohere-embed-english-v3  | 512        | $0.10   |
| Amazon Bedrock           | Cohere             | cohere-embed-multilingual-v3 | 512        | $0.10   |
| Amazon Bedrock           | Cohere             | cohere-embed-v4          | 128K       | $0.12   |
| LBL IT Division          | Unknown            | lbl/bge-m3               | 8.192K     | Free    |
| LBL IT Division          | Nomic.AI           | lbl/nomic-embed-text     | 8.192K     | Free    |
| LBL IT Division          | Nomic.AI           | lbl/nomic-embed-vision   | 8.192K     | Free    |
| LBL IT Division          | Nomic.AI           | nomic-embed-text         | 8.192K     | Free    |
| LBL IT Division          | Nomic.AI           | nomic-embed-vision       | 8.192K     | Free    |
| Amazon Bedrock           | Unknown            | nova-2-embed-multimodal  | 8.172K     | $0.14   |
| LBL IT Division          | Unknown            | text-embedding-ada-002   | 8.191K     | $0.10   |
| Amazon Bedrock           | Unknown            | titan-embed-image-v1     | 128        | $0.80   |
| Amazon Bedrock           | Unknown            | titan-embed-text-v1      | 8.192K     | $0.10   |
| Amazon Bedrock           | Unknown            | titan-embed-text-v2      | 8.192K     | $0.20   |

### Code Completion Models

| Provider                 | Creator                 | Model ID                 | Max Context | Cost    |
| ------------------------ | :---------------------: | ------------------------ | :---------: | :-----: |
| LBL IT Division          | Google                  | codegemma                | 8.192K      | N/C     |
| LBL IT Division          | Google                  | lbl/codegemma:2b         | 8.192K      | N/C     |

### LBL-Hosted Customized Models

LBL-Hosted Customized Models use a customized system prompt on top of a base model, to provide improved behavior for LBL users in chat modes.

Note: API users can bypass the system prompt by accessing underlying models directly, if desired.

| Provider                 | Model ID                 | Underlying Model                        | Input/Output   | Vision  | Cost    |
| ------------------------ | ------------------------ | :-------------------------------------: | :------------: | :-----: | :-----: |
| LBL IT Division          | lbl/cborg-chat           | hosted_vllm/Llama-4-Scout-17B-16E-Instruct | 131.072K / 8.192K | N       | N/C     |
| LBL IT Division          | lbl/cborg-coder          | hosted_vllm/gpt-oss-120b                | 131.072K / 131.072K | N       | N/C     |
| LBL IT Division          | lbl/cborg-coder-base     | ollama/codegemma:2b                     | 8.192K / N/A   | N       | N/C     |
| LBL IT Division          | lbl/cborg-deepthought    | hosted_vllm/gpt-oss-120b                | 131.072K / 131.072K | N       | N/C     |
| LBL IT Division          | lbl/cborg-mini           | hosted_vllm/gpt-oss-20b                 | N/A / N/A      | N       | N/C     |
| LBL IT Division          | lbl/cborg-ocr            | openai/Nanonets-OCR                     | N/A / N/A      | N       | N/C     |
| LBL IT Division          | lbl/cborg-vision         | hosted_vllm/Llama-4-Scout-17B-16E-Instruct | 131.072K / 8.192K | N       | N/C     |

{{< notice "note" >}}
**Cost Explanation**: The Cost column provides a rough order-of-magnitude estimate of costs associated with the model. Detailed cost data is provided in the model details below. Cost for using commercial models are paid for by the IT Division. There is no cost to individual users at this time and no PID is required.
{{< /notice >}}

## Understanding the Context Window Length

The context length is a measure of the approximate number of words that a model can process as inputs. Some models support extremely long context lengths. For a typical book with 300 words per page, the correspondence between pages and tokens is approximately as follows:

| Context Length | Pages of Text  |
| :------------: | :------------: |
| 1.0M           | 2000           |
| 200K           | 400            |
| 128K           | 250            |
| 64K            | 128            |
| 32K            | 64             |
| 16K            | 32             |
| 8K             | 16             |
| 4K             | 8              |

When chatting with a model, your entire chat history of the session is fed into the context window with every message sent. Therefore, as you send more messages the context length will increase. Over time this can cause the cost of each message exchange to increase until the model's maximum token limit is reached.

## Model Information Details

### Amazon Bedrock

Models hosted on Amazon Bedrock are provided under enterprise agreements. Your data will not be used for training.

#### amazon/claude-haiku-3-5

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-haiku-3-5`
- **Underlying Model**: `bedrock/us.anthropic.claude-3-5-haiku-20241022-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.80
- **Cost per 1M Tokens (Output)**: $4.00

#### amazon/claude-haiku-4-5

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-haiku-4-5`
- **Underlying Model**: `bedrock/us.anthropic.claude-haiku-4-5-20251001-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 64,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### amazon/claude-haiku-4-5-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-haiku-4-5-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-haiku-4-5-20251001-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 64,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### amazon/claude-opus-4

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-20250514-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### amazon/claude-opus-4-1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-1`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-1-20250805-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### amazon/claude-opus-4-1-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-1-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-1-20250805-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### amazon/claude-opus-4-5

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-5`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-5-20251101-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### amazon/claude-opus-4-5-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-5-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-5-20251101-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### amazon/claude-opus-4-6

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-6`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-6-v1`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### amazon/claude-opus-4-6-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-6-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-6-v1`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### amazon/claude-opus-4-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-opus-4-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-opus-4-20250514-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### amazon/claude-sonnet-4

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-20250514-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/claude-sonnet-4-5

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4-5`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-5-20250929-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/claude-sonnet-4-5-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4-5-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-5-20250929-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/claude-sonnet-4-6

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4-6`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-6`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/claude-sonnet-4-6-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4-6-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-6`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/claude-sonnet-4-high

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/claude-sonnet-4-high`
- **Underlying Model**: `bedrock/us.anthropic.claude-sonnet-4-20250514-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### amazon/llama-4-maverick

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/llama-4-maverick`
- **Underlying Model**: `bedrock/us.meta.llama4-maverick-17b-instruct-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 4,096
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.24
- **Cost per 1M Tokens (Output)**: $0.97

#### amazon/llama-4-scout

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/llama-4-scout`
- **Underlying Model**: `bedrock/us.meta.llama4-scout-17b-instruct-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 4,096
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.17
- **Cost per 1M Tokens (Output)**: $0.66

#### mistral-large

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `mistral-large`
- **Underlying Model**: `bedrock/mistral.mistral-large-3-675b-instruct`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $1.50

#### mistral-large-3

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `mistral-large-3`
- **Underlying Model**: `bedrock/mistral.mistral-large-3-675b-instruct`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $1.50

#### amazon/gpt-oss-120b

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/gpt-oss-120b`
- **Underlying Model**: `bedrock/openai.gpt-oss-120b-1:0`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Tool Use, Reasoning, Structured Output
- **Cost per 1M Tokens (Input)**: $0.15
- **Cost per 1M Tokens (Output)**: $0.60

#### amazon/gpt-oss-20b

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `amazon/gpt-oss-20b`
- **Underlying Model**: `bedrock/openai.gpt-oss-20b-1:0`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Tool Use, Reasoning, Structured Output
- **Cost per 1M Tokens (Input)**: $0.07
- **Cost per 1M Tokens (Output)**: $0.30

#### devstral

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `devstral`
- **Underlying Model**: `bedrock/mistral.devstral-2-123b`
- **Mode**: Chat
- **Max Input Tokens**: 256,000
- **Max Output Tokens**: 256,000
- **Capabilities**: Tool Use, Structured Output
- **Cost per 1M Tokens (Input)**: $0.40
- **Cost per 1M Tokens (Output)**: $2.00

#### devstral-2

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `devstral-2`
- **Underlying Model**: `bedrock/mistral.devstral-2-123b`
- **Mode**: Chat
- **Max Input Tokens**: 256,000
- **Max Output Tokens**: 256,000
- **Capabilities**: Tool Use, Structured Output
- **Cost per 1M Tokens (Input)**: $0.40
- **Cost per 1M Tokens (Output)**: $2.00

#### nemotron-nano-3

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nemotron-nano-3`
- **Underlying Model**: `bedrock/nvidia.nemotron-nano-3-30b`
- **Mode**: Chat
- **Max Input Tokens**: 262,144
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.06
- **Cost per 1M Tokens (Output)**: $0.24

#### nemotron-nano-vl

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nemotron-nano-vl`
- **Underlying Model**: `bedrock/nvidia.nemotron-nano-12b-v2`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision
- **Cost per 1M Tokens (Input)**: $0.20
- **Cost per 1M Tokens (Output)**: $0.60

#### nova-micro

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-micro`
- **Underlying Model**: `bedrock/amazon.nova-premier-v1:0`
- **Cost**: No cost

#### nova-micro-1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-micro-1`
- **Underlying Model**: `bedrock/amazon.nova-micro-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 10,000
- **Capabilities**: Tool Use, Prompt Caching, Structured Output
- **Cost per 1M Tokens (Input)**: $0.04
- **Cost per 1M Tokens (Output)**: $0.14

#### nova-premier

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-premier`
- **Underlying Model**: `bedrock/amazon.nova-premier-v1:0`
- **Cost**: No cost

#### nova-premier-1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-premier-1`
- **Underlying Model**: `bedrock/amazon.nova-premier-v1:0`
- **Cost**: No cost

#### nova-pro

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-pro`
- **Underlying Model**: `bedrock/amazon.nova-premier-v1:0`
- **Cost**: No cost

#### nova-pro-1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-pro-1`
- **Underlying Model**: `bedrock/amazon.nova-pro-v1:0`
- **Mode**: Chat
- **Max Input Tokens**: 300,000
- **Max Output Tokens**: 10,000
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.80
- **Cost per 1M Tokens (Output)**: $3.20

#### cohere-embed-english-v3

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `cohere-embed-english-v3`
- **Underlying Model**: `bedrock/cohere.embed-english-v3`
- **Mode**: Embedding
- **Max Input Tokens**: 512
- **Cost per 1M Tokens (Input)**: $0.10

#### cohere-embed-multilingual-v3

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `cohere-embed-multilingual-v3`
- **Underlying Model**: `bedrock/cohere.embed-multilingual-v3`
- **Mode**: Embedding
- **Max Input Tokens**: 512
- **Cost per 1M Tokens (Input)**: $0.10

#### cohere-embed-v4

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `cohere-embed-v4`
- **Underlying Model**: `bedrock/cohere.embed-v4:0`
- **Mode**: Embedding
- **Max Input Tokens**: 128,000
- **Cost per 1M Tokens (Input)**: $0.12

#### nova-2-embed-multimodal

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `nova-2-embed-multimodal`
- **Underlying Model**: `bedrock/amazon.nova-2-multimodal-embeddings-v1:0`
- **Mode**: Embedding
- **Max Input Tokens**: 8,172
- **Cost per 1M Tokens (Input)**: $0.14

#### titan-embed-image-v1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `titan-embed-image-v1`
- **Underlying Model**: `bedrock/amazon.titan-embed-image-v1`
- **Mode**: Embedding
- **Max Input Tokens**: 128
- **Cost per 1M Tokens (Input)**: $0.80

#### titan-embed-text-v1

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `titan-embed-text-v1`
- **Underlying Model**: `bedrock/amazon.titan-embed-text-v1`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost per 1M Tokens (Input)**: $0.10

#### titan-embed-text-v2

- **Endpoint Location**: Amazon Bedrock
- **API Model Name**: `titan-embed-text-v2`
- **Underlying Model**: `bedrock/amazon.titan-embed-text-v2:0`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost per 1M Tokens (Input)**: $0.20

### Google Vertex AI

Models hosted on Google Vertex AI are provided under enterprise agreements. Your data will not be used for training.

#### anthropic/claude-haiku

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-haiku`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### anthropic/claude-haiku-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-haiku-high`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### anthropic/claude-opus

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-opus`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### anthropic/claude-opus-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-opus-high`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### anthropic/claude-sonnet

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-sonnet`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### anthropic/claude-sonnet-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `anthropic/claude-sonnet-high`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### claude-3-5-haiku

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-3-5-haiku`
- **Underlying Model**: `vertex_ai/claude-3-5-haiku@20241022`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use, PDF Input
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### claude-haiku

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-haiku`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### claude-haiku-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-haiku-4-5`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### claude-haiku-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-haiku-high`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### claude-opus

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### claude-opus-4-0

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus-4-0`
- **Underlying Model**: `vertex_ai/claude-opus-4@20250514`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### claude-opus-4-1

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus-4-1`
- **Underlying Model**: `vertex_ai/claude-opus-4-1@20250805`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### claude-opus-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus-4-5`
- **Underlying Model**: `vertex_ai/claude-opus-4-5@20251101`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### claude-opus-4-6

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus-4-6`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### claude-opus-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-opus-high`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### claude-sonnet

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-sonnet`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### claude-sonnet-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-sonnet-4-5`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-5@20250929`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### claude-sonnet-4-6

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-sonnet-4-6`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### claude-sonnet-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `claude-sonnet-high`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-haiku-3-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-haiku-3-5`
- **Underlying Model**: `vertex_ai/claude-3-5-haiku@20241022`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use, PDF Input
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### google/claude-haiku-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-haiku-4-5`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### google/claude-haiku-4-5-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-haiku-4-5-high`
- **Underlying Model**: `vertex_ai/claude-haiku-4-5@20251001`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $5.00

#### google/claude-opus-4

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4`
- **Underlying Model**: `vertex_ai/claude-opus-4@20250514`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### google/claude-opus-4-1

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-1`
- **Underlying Model**: `vertex_ai/claude-opus-4-1@20250805`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### google/claude-opus-4-1-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-1-high`
- **Underlying Model**: `vertex_ai/claude-opus-4-1@20250805`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### google/claude-opus-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-5`
- **Underlying Model**: `vertex_ai/claude-opus-4-5@20251101`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### google/claude-opus-4-5-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-5-high`
- **Underlying Model**: `vertex_ai/claude-opus-4-5@20251101`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### google/claude-opus-4-6

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-6`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### google/claude-opus-4-6-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-6-high`
- **Underlying Model**: `vertex_ai/claude-opus-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $5.00
- **Cost per 1M Tokens (Output)**: $25.00

#### google/claude-opus-4-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-opus-4-high`
- **Underlying Model**: `vertex_ai/claude-opus-4@20250514`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $75.00

#### google/claude-sonnet-4

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4`
- **Underlying Model**: `vertex_ai/claude-sonnet-4@20250514`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-sonnet-4-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4-5`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-5@20250929`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-sonnet-4-5-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4-5-high`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-5@20250929`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-sonnet-4-6

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4-6`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-sonnet-4-6-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4-6-high`
- **Underlying Model**: `vertex_ai/claude-sonnet-4-6@default`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/claude-sonnet-4-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/claude-sonnet-4-high`
- **Underlying Model**: `vertex_ai/claude-sonnet-4@20250514`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output, Computer Use
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### google/deepseek-3.2

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/deepseek-3.2`
- **Underlying Model**: `vertex_ai/deepseek-ai/deepseek-v3.2-maas`
- **Mode**: Chat
- **Max Input Tokens**: 163,840
- **Max Output Tokens**: 32,768
- **Capabilities**: Tool Use, Reasoning, Prompt Caching
- **Cost per 1M Tokens (Input)**: $0.56
- **Cost per 1M Tokens (Output)**: $1.68

#### google/deepseek-r1

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/deepseek-r1`
- **Underlying Model**: `vertex_ai/deepseek-ai/deepseek-r1-0528-maas`
- **Mode**: Chat
- **Max Input Tokens**: 65,336
- **Max Output Tokens**: 8,192
- **Capabilities**: Tool Use, Reasoning, Prompt Caching
- **Cost per 1M Tokens (Input)**: $1.35
- **Cost per 1M Tokens (Output)**: $5.40

#### gemini-1.5-flash

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-1.5-flash`
- **Underlying Model**: `vertex_ai/gemini-1.5-flash`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Structured Output
- **Cost per 1M Tokens (Input)**: $0.07
- **Cost per 1M Tokens (Output)**: $0.30

#### gemini-1.5-pro

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-1.5-pro`
- **Underlying Model**: `vertex_ai/gemini-1.5-pro`
- **Mode**: Chat
- **Max Input Tokens**: 2,097,152
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $5.00

#### gemini-2.0-flash

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.0-flash`
- **Underlying Model**: `vertex_ai/gemini-2.0-flash`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Prompt Caching, Structured Output
- **Cost per 1M Tokens (Input)**: $0.10
- **Cost per 1M Tokens (Output)**: $0.40

#### gemini-2.0-flash-lite

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.0-flash-lite`
- **Underlying Model**: `vertex_ai/gemini-2.0-flash-lite`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 8,192
- **Capabilities**: Vision, Tool Use, Prompt Caching, Structured Output
- **Cost per 1M Tokens (Input)**: $0.07
- **Cost per 1M Tokens (Output)**: $0.30

#### gemini-2.5-flash

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-flash`
- **Underlying Model**: `vertex_ai/gemini-2.5-flash`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.30
- **Cost per 1M Tokens (Output)**: $2.50

#### gemini-2.5-flash-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-flash-high`
- **Underlying Model**: `vertex_ai/gemini-2.5-flash`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.30
- **Cost per 1M Tokens (Output)**: $2.50

#### gemini-2.5-flash-image

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-flash-image`
- **Underlying Model**: `vertex_ai/google/gemini-2.5-flash-image`
- **Cost**: No cost

#### gemini-2.5-flash-lite

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-flash-lite`
- **Underlying Model**: `vertex_ai/gemini-2.5-flash-lite-preview`
- **Cost**: No cost

#### gemini-2.5-pro

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-pro`
- **Underlying Model**: `vertex_ai/gemini-2.5-pro`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gemini-2.5-pro-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-2.5-pro-high`
- **Underlying Model**: `vertex_ai/gemini-3-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-3-flash

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3-flash`
- **Underlying Model**: `vertex_ai/gemini-3-flash-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $3.00

#### gemini-3-flash-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3-flash-high`
- **Underlying Model**: `vertex_ai/gemini-3-flash-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $3.00

#### gemini-3-pro

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3-pro`
- **Underlying Model**: `vertex_ai/gemini-3-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-3-pro-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3-pro-high`
- **Underlying Model**: `vertex_ai/gemini-3-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-3.1-pro

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3.1-pro`
- **Underlying Model**: `vertex_ai/gemini-3.1-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-3.1-pro-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3.1-pro-high`
- **Underlying Model**: `vertex_ai/gemini-3.1-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-embedding-001

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-embedding-001`
- **Underlying Model**: `openai/gemini-embedding-001`
- **Cost**: No cost

#### gemini-flash

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-flash`
- **Underlying Model**: `vertex_ai/gemini-3-flash-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $3.00

#### gemini-flash-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-flash-high`
- **Underlying Model**: `vertex_ai/gemini-3-flash-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,535
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.50
- **Cost per 1M Tokens (Output)**: $3.00

#### gemini-flash-image

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-flash-image`
- **Underlying Model**: `vertex_ai/google/gemini-2.5-flash-image`
- **Cost**: No cost

#### gemini-pro

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-pro`
- **Underlying Model**: `vertex_ai/gemini-3.1-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-pro-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-pro-high`
- **Underlying Model**: `vertex_ai/gemini-3.1-pro-preview`
- **Mode**: Chat
- **Max Input Tokens**: 1,048,576
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### google/llama-4-maverick

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/llama-4-maverick`
- **Underlying Model**: `vertex_ai/meta/llama-4-maverick-17b-128e-instruct-maas`
- **Mode**: Chat
- **Max Input Tokens**: 1,000,000
- **Max Output Tokens**: 1,000,000
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.35
- **Cost per 1M Tokens (Output)**: $1.15

#### google/codestral

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/codestral`
- **Underlying Model**: `vertex_ai/codestral-2501`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.20
- **Cost per 1M Tokens (Output)**: $0.60

#### google/gpt-oss-120b

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/gpt-oss-120b`
- **Underlying Model**: `vertex_ai/openai/gpt-oss-120b-maas`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 32,768
- **Capabilities**: Reasoning
- **Cost per 1M Tokens (Input)**: $0.15
- **Cost per 1M Tokens (Output)**: $0.60

#### google/gpt-oss-120b-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/gpt-oss-120b-high`
- **Underlying Model**: `vertex_ai/openai/gpt-oss-120b-maas`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 32,768
- **Capabilities**: Reasoning
- **Reasoning Effort**: high
- **Cost**: No cost

#### google/gpt-oss-20b

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/gpt-oss-20b`
- **Underlying Model**: `vertex_ai/openai/gpt-oss-20b-maas`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 32,768
- **Capabilities**: Reasoning
- **Cost per 1M Tokens (Input)**: $0.07
- **Cost per 1M Tokens (Output)**: $0.30

#### google/gpt-oss-20b-high

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/gpt-oss-20b-high`
- **Underlying Model**: `vertex_ai/openai/gpt-oss-20b-maas`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 32,768
- **Capabilities**: Reasoning
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.07
- **Cost per 1M Tokens (Output)**: $0.30

#### google/qwen-3

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/qwen-3`
- **Underlying Model**: `vertex_ai/qwen/qwen3-235b-a22b-instruct-2507-maas`
- **Mode**: Chat
- **Max Input Tokens**: 262,144
- **Max Output Tokens**: 16,384
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.00

#### google/qwen-3-coder

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/qwen-3-coder`
- **Underlying Model**: `vertex_ai/qwen/qwen3-coder-480b-a35b-instruct-maas`
- **Mode**: Chat
- **Max Input Tokens**: 262,144
- **Max Output Tokens**: 32,768
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $4.00

#### google/glm-4.7

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/glm-4.7`
- **Underlying Model**: `vertex_ai/zai-org/glm-4.7-maas`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Tool Use, Reasoning
- **Cost per 1M Tokens (Input)**: $0.60
- **Cost per 1M Tokens (Output)**: $2.20

#### google/glm-5

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/glm-5`
- **Underlying Model**: `vertex_ai/zai-org/glm-5-maas`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Tool Use, Reasoning, Prompt Caching
- **Cost per 1M Tokens (Input)**: $1.00
- **Cost per 1M Tokens (Output)**: $3.20

#### google/kimi-k2-thinking

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/kimi-k2-thinking`
- **Underlying Model**: `vertex_ai/moonshotai/kimi-k2-thinking-maas`
- **Mode**: Chat
- **Max Input Tokens**: 256,000
- **Max Output Tokens**: 256,000
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.60
- **Cost per 1M Tokens (Output)**: $2.50

#### google/minimax-m2

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `google/minimax-m2`
- **Underlying Model**: `vertex_ai/minimaxai/minimax-m2-maas`
- **Mode**: Chat
- **Max Input Tokens**: 196,608
- **Max Output Tokens**: 196,608
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $0.30
- **Cost per 1M Tokens (Output)**: $1.20

#### text-embedding-004

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `text-embedding-004`
- **Underlying Model**: `openai/text-embedding-004`
- **Cost**: No cost

#### gemini-3-pro-image

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-3-pro-image`
- **Underlying Model**: `vertex_ai/gemini-3-pro-image-preview`
- **Mode**: Image Generation
- **Max Input Tokens**: 65,536
- **Max Output Tokens**: 32,768
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

#### gemini-pro-image

- **Endpoint Location**: Google Vertex AI
- **API Model Name**: `gemini-pro-image`
- **Underlying Model**: `vertex_ai/gemini-3-pro-image-preview`
- **Mode**: Image Generation
- **Max Input Tokens**: 65,536
- **Max Output Tokens**: 32,768
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $12.00

### LBL IT Division

The IT Division's Science IT group provides access to open-weight models running on Berkeley Lab-owned networks and hardware, located in the Building 50 data center. LBL-Hosted models are free-to-use.

#### lbl/granite-docling

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/granite-docling`
- **Underlying Model**: `hosted_vllm/granite-docling`
- **Mode**: Chat
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### Llama-4-Scout-17B-16E-Instruct

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `Llama-4-Scout-17B-16E-Instruct`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### lbl/Llama-4-Scout-17B-16E-Instruct

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/Llama-4-Scout-17B-16E-Instruct`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### lbl/llama

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/llama`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### lbl/llama-4-scout

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/llama-4-scout`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### meta/llama-4-scout

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `meta/llama-4-scout`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### gpt

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `gpt`
- **Underlying Model**: `openai/gpt-5.2`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-oss-120b

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `gpt-oss-120b`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Cost**: No cost

#### gpt-oss-120b-high

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `gpt-oss-120b-high`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Reasoning Effort**: high
- **Cost**: No cost

#### gpt-oss-20b

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `gpt-oss-20b`
- **Underlying Model**: `hosted_vllm/gpt-oss-20b`
- **Mode**: Chat
- **Reasoning Effort**: high
- **Cost**: No cost

#### gpt-oss-20b-high

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `gpt-oss-20b-high`
- **Underlying Model**: `hosted_vllm/gpt-oss-20b`
- **Mode**: Chat
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/gpt-oss-120b

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/gpt-oss-120b`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Cost**: No cost

#### lbl/gpt-oss-120b-high

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/gpt-oss-120b-high`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/gpt-oss-120b-medium

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/gpt-oss-120b-medium`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Reasoning Effort**: medium
- **Cost**: No cost

#### lbl/gpt-oss-20b

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/gpt-oss-20b`
- **Underlying Model**: `hosted_vllm/gpt-oss-20b`
- **Mode**: Chat
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/gpt-oss-20b-high

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/gpt-oss-20b-high`
- **Underlying Model**: `hosted_vllm/gpt-oss-20b`
- **Mode**: Chat
- **Reasoning Effort**: high
- **Cost**: No cost

#### Nanonets-OCR

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `Nanonets-OCR`
- **Underlying Model**: `openai/Nanonets-OCR`
- **Cost**: No cost

#### lbl/Nanonets-OCR

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/Nanonets-OCR`
- **Underlying Model**: `openai/Nanonets-OCR`
- **Cost**: No cost

#### lbl/jbei-publications-chat

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/jbei-publications-chat`
- **Underlying Model**: `openai/lbl/jbei-publications-chat`
- **Mode**: Chat
- **Cost**: No cost

#### bge-m3

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `bge-m3`
- **Underlying Model**: `openai/nomic-embed-text`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/bge-m3

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/bge-m3`
- **Underlying Model**: `openai/nomic-embed-text`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/nomic-embed-text

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/nomic-embed-text`
- **Underlying Model**: `openai/nomic-embed-text`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/nomic-embed-vision

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/nomic-embed-vision`
- **Underlying Model**: `openai/nomic-embed-vision`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### nomic-embed-text

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `nomic-embed-text`
- **Underlying Model**: `openai/nomic-embed-text`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### nomic-embed-vision

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `nomic-embed-vision`
- **Underlying Model**: `openai/nomic-embed-vision`
- **Mode**: Embedding
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### text-embedding-ada-002

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `text-embedding-ada-002`
- **Underlying Model**: `openai/text-embedding-ada-002`
- **Mode**: Embedding
- **Max Input Tokens**: 8,191
- **Cost per 1M Tokens (Input)**: $0.10

#### codegemma

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `codegemma`
- **Underlying Model**: `ollama/codegemma:2b`
- **Mode**: Code Completion
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/codegemma:2b

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/codegemma:2b`
- **Underlying Model**: `ollama/codegemma:2b`
- **Mode**: Code Completion
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/cborg-chat

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-chat`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

#### lbl/cborg-coder

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-coder`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/cborg-coder-base

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-coder-base`
- **Underlying Model**: `ollama/codegemma:2b`
- **Mode**: Code Completion
- **Max Input Tokens**: 8,192
- **Cost**: No cost

#### lbl/cborg-deepthought

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-deepthought`
- **Underlying Model**: `hosted_vllm/gpt-oss-120b`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/cborg-mini

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-mini`
- **Underlying Model**: `hosted_vllm/gpt-oss-20b`
- **Mode**: Chat
- **Reasoning Effort**: high
- **Cost**: No cost

#### lbl/cborg-ocr

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-ocr`
- **Underlying Model**: `openai/Nanonets-OCR`
- **Cost**: No cost

#### lbl/cborg-vision

- **Endpoint Location**: LBL IT Division
- **API Model Name**: `lbl/cborg-vision`
- **Underlying Model**: `hosted_vllm/Llama-4-Scout-17B-16E-Instruct`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 8,192
- **Cost**: No cost

### Microsoft Azure

Models hosted on Microsoft Azure are provided under enterprise agreements. Your data will not be used for training.

#### azure/gpt-oss-120b

- **Endpoint Location**: Microsoft Azure
- **API Model Name**: `azure/gpt-oss-120b`
- **Underlying Model**: `azure/gpt-oss-120b`
- **Max Output Tokens**: 131,072
- **Cost per 1M Tokens (Input)**: $0.15
- **Cost per 1M Tokens (Output)**: $0.60

#### azure/grok-3

- **Endpoint Location**: Microsoft Azure
- **API Model Name**: `azure/grok-3`
- **Underlying Model**: `azure/grok-3`
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### azure/grok-3-mini

- **Endpoint Location**: Microsoft Azure
- **API Model Name**: `azure/grok-3-mini`
- **Underlying Model**: `azure/grok-3-mini`
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $1.27

### OpenAI

Models hosted on OpenAI are provided under enterprise agreements. Your data will not be used for training.

#### gpt-4.1

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-4.1`
- **Underlying Model**: `openai/gpt-4.1`
- **Mode**: Chat
- **Max Input Tokens**: 1,047,576
- **Max Output Tokens**: 32,768
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $8.00

#### gpt-4.1-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-4.1-mini`
- **Underlying Model**: `openai/gpt-4.1-mini`
- **Mode**: Chat
- **Max Input Tokens**: 1,047,576
- **Max Output Tokens**: 32,768
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.40
- **Cost per 1M Tokens (Output)**: $1.60

#### gpt-4.1-nano

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-4.1-nano`
- **Underlying Model**: `openai/gpt-4.1-nano`
- **Mode**: Chat
- **Max Input Tokens**: 1,047,576
- **Max Output Tokens**: 32,768
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.10
- **Cost per 1M Tokens (Output)**: $0.40

#### gpt-4o

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-4o`
- **Underlying Model**: `openai/gpt-4o`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.50
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-4o-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-4o-mini`
- **Underlying Model**: `openai/gpt-4o-mini`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.15
- **Cost per 1M Tokens (Output)**: $0.60

#### gpt-5

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5`
- **Underlying Model**: `openai/gpt-5`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5-chat

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-chat`
- **Underlying Model**: `openai/gpt-5-chat-latest`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5-codex

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-codex`
- **Underlying Model**: `openai/gpt-5-codex`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-high`
- **Underlying Model**: `openai/gpt-5`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-mini`
- **Underlying Model**: `openai/gpt-5-mini`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $2.00

#### gpt-5-mini-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-mini-high`
- **Underlying Model**: `openai/gpt-5-mini`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $2.00

#### gpt-5-nano

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-nano`
- **Underlying Model**: `openai/gpt-5-nano`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.05
- **Cost per 1M Tokens (Output)**: $0.40

#### gpt-5-nano-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5-nano-high`
- **Underlying Model**: `openai/gpt-5-nano`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $0.05
- **Cost per 1M Tokens (Output)**: $0.40

#### gpt-5.1

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1`
- **Underlying Model**: `openai/gpt-5.1`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.1-chat

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1-chat`
- **Underlying Model**: `openai/gpt-5.1-chat-latest`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.1-codex

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1-codex`
- **Underlying Model**: `openai/gpt-5.1-codex`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.1-codex-max

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1-codex-max`
- **Underlying Model**: `openai/gpt-5.1-codex-max`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.1-codex-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1-codex-mini`
- **Underlying Model**: `openai/gpt-5.1-codex-mini`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $2.00

#### gpt-5.1-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.1-high`
- **Underlying Model**: `openai/gpt-5.1`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.2

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2`
- **Underlying Model**: `openai/gpt-5.2`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-5.2-chat

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2-chat`
- **Underlying Model**: `openai/gpt-5.2-chat-latest`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-5.2-codex

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2-codex`
- **Underlying Model**: `openai/gpt-5.2-codex`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-5.2-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2-high`
- **Underlying Model**: `openai/gpt-5.1`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.25
- **Cost per 1M Tokens (Output)**: $10.00

#### gpt-5.2-pro

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2-pro`
- **Underlying Model**: `openai/gpt-5.2`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-5.2-xhigh

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.2-xhigh`
- **Underlying Model**: `openai/gpt-5.2`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: xhigh
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-5.3-codex

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-5.3-codex`
- **Underlying Model**: `openai/gpt-5.3-codex`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-chat

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-chat`
- **Underlying Model**: `openai/gpt-5.2-chat-latest`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 16,384
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-codex

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-codex`
- **Underlying Model**: `openai/gpt-5.3-codex`
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.75
- **Cost per 1M Tokens (Output)**: $14.00

#### gpt-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-mini`
- **Underlying Model**: `openai/gpt-5-mini`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.25
- **Cost per 1M Tokens (Output)**: $2.00

#### gpt-nano

- **Endpoint Location**: OpenAI
- **API Model Name**: `gpt-nano`
- **Underlying Model**: `openai/gpt-5-nano`
- **Mode**: Chat
- **Max Input Tokens**: 272,000
- **Max Output Tokens**: 128,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $0.05
- **Cost per 1M Tokens (Output)**: $0.40

#### o1

- **Endpoint Location**: OpenAI
- **API Model Name**: `o1`
- **Underlying Model**: `openai/o1`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $60.00

#### o3

- **Endpoint Location**: OpenAI
- **API Model Name**: `o3`
- **Underlying Model**: `openai/o3`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $8.00

#### o3-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `o3-high`
- **Underlying Model**: `openai/o3`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $2.00
- **Cost per 1M Tokens (Output)**: $8.00

#### o3-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `o3-mini`
- **Underlying Model**: `openai/o3-mini`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Tool Use, Reasoning, Prompt Caching, Structured Output
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

#### o3-mini-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `o3-mini-high`
- **Underlying Model**: `openai/o3-mini`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Tool Use, Reasoning, Prompt Caching, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

#### o4-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `o4-mini`
- **Underlying Model**: `openai/o4-mini`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

#### o4-mini-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `o4-mini-high`
- **Underlying Model**: `openai/o4-mini`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

#### o1-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `o1-high`
- **Underlying Model**: `openai/o1`
- **Mode**: Chat
- **Max Input Tokens**: 200,000
- **Max Output Tokens**: 100,000
- **Capabilities**: Vision, Tool Use, Reasoning, Prompt Caching, PDF Input, Structured Output
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $15.00
- **Cost per 1M Tokens (Output)**: $60.00

#### o1-mini

- **Endpoint Location**: OpenAI
- **API Model Name**: `o1-mini`
- **Underlying Model**: `openai/o1-mini`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Prompt Caching, PDF Input
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

#### o1-mini-high

- **Endpoint Location**: OpenAI
- **API Model Name**: `o1-mini-high`
- **Underlying Model**: `openai/o1-mini`
- **Mode**: Chat
- **Max Input Tokens**: 128,000
- **Max Output Tokens**: 65,536
- **Capabilities**: Vision, Prompt Caching, PDF Input
- **Reasoning Effort**: high
- **Cost per 1M Tokens (Input)**: $1.10
- **Cost per 1M Tokens (Output)**: $4.40

### xAI

#### xai/grok-3

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-3`
- **Underlying Model**: `xai/grok-3`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### xai/grok-3-mini

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-3-mini`
- **Underlying Model**: `xai/grok-3-mini`
- **Mode**: Chat
- **Max Input Tokens**: 131,072
- **Max Output Tokens**: 131,072
- **Capabilities**: Tool Use, Reasoning
- **Cost per 1M Tokens (Input)**: $0.30
- **Cost per 1M Tokens (Output)**: $0.50

#### xai/grok-4-0709

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-4-0709`
- **Underlying Model**: `xai/grok-4-0709`
- **Mode**: Chat
- **Max Input Tokens**: 256,000
- **Max Output Tokens**: 256,000
- **Capabilities**: Tool Use
- **Cost per 1M Tokens (Input)**: $3.00
- **Cost per 1M Tokens (Output)**: $15.00

#### xai/grok-4-1-fast

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-4-1-fast`
- **Underlying Model**: `xai/grok-4-1-fast-non-reasoning`
- **Mode**: Chat
- **Max Input Tokens**: 2,000,000.0
- **Max Output Tokens**: 2,000,000.0
- **Capabilities**: Vision, Tool Use, Structured Output
- **Cost per 1M Tokens (Input)**: $0.20
- **Cost per 1M Tokens (Output)**: $0.50

#### xai/grok-4-1-fast-reasoning

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-4-1-fast-reasoning`
- **Underlying Model**: `xai/grok-4-1-fast-reasoning`
- **Mode**: Chat
- **Max Input Tokens**: 2,000,000.0
- **Max Output Tokens**: 2,000,000.0
- **Capabilities**: Vision, Tool Use, Reasoning, Structured Output
- **Cost per 1M Tokens (Input)**: $0.20
- **Cost per 1M Tokens (Output)**: $0.50

#### xai/grok-code-fast-1

- **Endpoint Location**: xAI
- **API Model Name**: `xai/grok-code-fast-1`
- **Underlying Model**: `xai/grok-code-fast-1`
- **Mode**: Chat
- **Max Input Tokens**: 256,000
- **Max Output Tokens**: 256,000
- **Capabilities**: Tool Use, Reasoning
- **Cost per 1M Tokens (Input)**: $0.20
- **Cost per 1M Tokens (Output)**: $1.50
