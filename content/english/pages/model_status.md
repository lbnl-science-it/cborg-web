---
title: "Model Status"
meta_title: ""
description: "Live test results for all AI models available through the CBORG AI Portal"
draft: false
---

## Model Status

*Last tested: 2026-06-04 22:27:43 UTC*

233 of 266 models passed. Chat/completion: 219/244. Embeddings: 14/22.

### Chat and Completion Models

| Model | Underlying Model | Status | Tokens (p/r/m/t) | Time | Cost |
| ----- | ---------------- | :----: | :--------------: | ---: | ---: |
| `claude-haiku` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=17 r=0 m=4 t=21 | 658ms | $0.000037 |
| `claude-haiku-high` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=46 r=27 m=14 t=87 | 1.2s | $0.000251 |
| `claude-sonnet` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 885ms | $0.000111 |
| `claude-sonnet-high` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 877ms | $0.000111 |
| `claude-opus` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.2s | $0.00021 |
| `claude-opus-high` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.0s | $0.00021 |
| `anthropic/claude-haiku` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=17 r=0 m=4 t=21 | 622ms | $0.000037 |
| `anthropic/claude-haiku-high` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=46 r=29 m=14 t=89 | 851ms | $0.000261 |
| `anthropic/claude-sonnet` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 858ms | $0.000111 |
| `anthropic/claude-sonnet-high` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 1.4s | $0.000111 |
| `anthropic/claude-opus` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 2.5s | $0.00021 |
| `anthropic/claude-opus-high` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 2.2s | $0.00021 |
| `gemini-pro` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=141 m=1 t=151 | 3.1s | $0.001722 |
| `gemini-pro-high` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=98 m=1 t=108 | 8.3s | $0.001206 |
| `gemini-pro-priority` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=68 m=1 t=78 | 2.7s | $0.000846 |
| `gemini-pro-high-priority` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=105 m=1 t=115 | 4.0s | $0.00129 |
| `gemini-flash` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=87 m=1 t=97 | 1.7s | $0.000806 |
| `gemini-flash-high` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=108 m=1 t=118 | 2.6s | $0.000994 |
| `gemini-flash-priority` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=106 m=1 t=116 | 1.6s | $0.000976 |
| `gemini-flash-high-priority` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=85 m=1 t=95 | 2.9s | $0.000788 |
| `gemini-flash-lite` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 m=1 t=10 | 772ms | $0.000004 |
| `gemini-flash-lite-high` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 r=93 m=1 t=103 | 2.5s | $0.000143 |
| `gemini-flash-lite-priority` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 m=1 t=10 | 855ms | $0.000004 |
| `gemini-flash-lite-high-priority` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 r=119 m=1 t=129 | 2.3s | $0.000182 |
| `meta/llama-4-scout` | `bedrock/us.meta.llama4-scout-17b-instruct-v1:0` | ✅ | p=44 r=0 m=2 t=46 | 417ms | $0.000009 |
| `Llama-4-Scout-17B-16E-Instruct` | `bedrock/us.meta.llama4-scout-17b-instruct-v1:0` | ✅ | p=44 r=0 m=2 t=46 | 398ms | $0.000009 |
| `gpt-oss-20b` | `hosted_vllm/gpt-oss-20b` | ✅ | p=76 t=105 | 1.0s | -- |
| `gpt-oss-120b` | `vertex_ai/openai/gpt-oss-120b-maas` | ✅ | p=76 t=113 | 534ms | $0.000024 |
| `gpt-oss-20b-high` | `hosted_vllm/gpt-oss-20b-high` | ✅ | p=76 t=98 | 818ms | -- |
| `gpt-oss-120b-high` | `vertex_ai/openai/gpt-oss-120b-maas` | ✅ | p=76 t=187 | 1.3s | $0.000068 |
| `gemma-4` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 334ms | -- |
| `gemma-4-thinking` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=65 | 562ms | -- |
| `gemma-4-mini` | `hosted_vllm/gemma-4-mini` | ✅ | p=76 t=107 | 1.0s | -- |
| `gemma-4-mini-thinking` | `hosted_vllm/gemma-4-mini-thinking` | ✅ | p=76 t=113 | 1.2s | -- |
| `gpt` | `openai/gpt-5.5` | ✅ | p=15 r=6 t=31 | 1.5s | $0.000555 |
| `gpt-high` | `openai/gpt-5.5` | ✅ | p=15 r=6 t=31 | 1.2s | $0.000555 |
| `gpt-codex` | `openai/gpt-5.3-codex` | ✅ | p=15 r=0 t=20 | 906ms | $0.000096 |
| `gpt-chat` | `openai/gpt-5.2-chat-latest` | ✅ | p=15 r=0 t=25 | 1.1s | $0.000166 |
| `gpt-pro` | `openai/gpt-5.5-pro` | ✅ | p=15 r=10 t=32 | 4.5s | $0.00351 |
| `gpt-mini` | `openai/gpt-5.4-mini` | ✅ | p=15 r=0 t=19 | 461ms | $0.000029 |
| `gpt-mini-high` | `openai/gpt-5.4-mini` | ✅ | p=15 r=10 t=35 | 623ms | $0.000101 |
| `gpt-nano` | `openai/gpt-5.4-nano` | ✅ | p=15 r=0 t=19 | 701ms | $0.000008 |
| `gpt-nano-high` | `openai/gpt-5.4-nano` | ✅ | p=15 r=0 t=19 | 534ms | $0.000008 |
| `xai/grok-4.20-reasoning` | `vertex_ai/xai/grok-4.20-reasoning` | ✅ | p=338 r=146 t=485 | 1.1s | $0.000976 |
| `xai/grok-4.3` | -- | ❌ | -- | -- | -- |
| `xai/grok-reasoning` | `vertex_ai/xai/grok-4.20-reasoning` | ✅ | p=338 r=323 t=662 | 1.6s | $0.002038 |
| `xai/grok` | -- | ❌ | -- | -- | -- |
| `cborg-chat` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 2.3s | -- |
| `cborg-deepthought` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=98 | 11.4s | -- |
| `cborg-coder` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=86 | 2.6s | -- |
| `cborg-coder-fast` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 888ms | -- |
| `cborg-mini` | `hosted_vllm/gemma-4-mini-thinking` | ✅ | p=76 t=107 | 1.1s | -- |
| `cborg-mini-fast` | `hosted_vllm/gemma-4-mini` | ✅ | p=76 t=112 | 1.2s | -- |
| `cborg-ocr` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 2.2s | -- |
| `cborg-vision` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=66 | 8.8s | -- |
| `cborg-safeguard` | `hosted_vllm/gpt-oss-safeguard-20b` | ✅ | p=76 t=108 | 332ms | -- |
| `cborg-safeguard-high` | `hosted_vllm/gpt-oss-safeguard-20b-high` | ✅ | p=76 t=99 | 282ms | -- |
| `cborg-privacy-filter` | `hosted_vllm/privacy-filter` | ✅ | p=6 t=12 | 334ms | -- |
| `claude-haiku-4-5` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=17 r=0 m=4 t=21 | 644ms | $0.000037 |
| `claude-sonnet-4-5` | `vertex_ai/claude-sonnet-4-5@20250929` | ✅ | p=17 r=0 m=4 t=21 | 950ms | $0.000111 |
| `claude-sonnet-4-6` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 849ms | $0.000111 |
| `claude-opus-4-0` | `vertex_ai/claude-opus-4@20250514` | ✅ | p=17 r=0 m=4 t=21 | 1.6s | $0.000555 |
| `claude-opus-4-1` | `vertex_ai/claude-opus-4-1@20250805` | ✅ | p=17 r=0 m=4 t=21 | 1.4s | $0.000555 |
| `claude-opus-4-5` | `vertex_ai/claude-opus-4-5@20251101` | ✅ | p=17 r=0 m=4 t=21 | 853ms | $0.000185 |
| `claude-opus-4-6` | `vertex_ai/claude-opus-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 1.0s | $0.000185 |
| `claude-opus-4-7` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 1.5s | $0.000285 |
| `claude-opus-4-8` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.3s | $0.00021 |
| `devstral` | `bedrock/mistral.devstral-2-123b` | ✅ | p=12 r=0 m=3 t=15 | 685ms | $0.000011 |
| `mistral-large` | `bedrock/mistral.mistral-large-3-675b-instruct` | ✅ | p=12 r=0 m=2 t=14 | 464ms | $0.000009 |
| `nova-premier` | -- | ❌ | -- | -- | -- |
| `nova-pro` | -- | ❌ | -- | -- | -- |
| `nova-micro` | -- | ❌ | -- | -- | -- |
| `gpt-4o` | `openai/gpt-4o` | ✅ | p=16 r=0 t=17 | 600ms | $0.00005 |
| `gpt-4o-mini` | `openai/gpt-4o-mini` | ✅ | p=16 r=0 t=17 | 526ms | $0.000003 |
| `gpt-4.1` | `openai/gpt-4.1` | ✅ | p=16 r=0 t=17 | 559ms | $0.00004 |
| `gpt-4.1-mini` | `openai/gpt-4.1-mini` | ✅ | p=16 r=0 t=17 | 716ms | $0.000008 |
| `gpt-4.1-nano` | `openai/gpt-4.1-nano` | ✅ | p=16 r=0 t=17 | 440ms | $0.000002 |
| `gpt-5` | `openai/gpt-5` | ✅ | p=15 r=64 t=89 | 2.2s | $0.000759 |
| `gpt-5-chat` | `openai/gpt-5-chat-latest` | ✅ | p=16 r=0 t=17 | 514ms | $0.00003 |
| `gpt-5-mini` | `openai/gpt-5-mini` | ✅ | p=15 r=64 t=89 | 2.1s | $0.000152 |
| `gpt-5-mini-high` | `openai/gpt-5-mini` | ✅ | p=15 r=192 t=217 | 3.6s | $0.000408 |
| `gpt-5-nano` | `openai/gpt-5-nano` | ✅ | p=15 r=64 t=89 | 1.2s | $0.00003 |
| `gpt-5-nano-high` | `openai/gpt-5-nano` | ✅ | p=15 r=128 t=153 | 1.6s | $0.000056 |
| `gpt-5-codex` | `openai/gpt-5-codex` | ✅ | p=15 r=0 t=62 | 1.3s | $0.000489 |
| `gpt-5-high` | `openai/gpt-5` | ✅ | p=15 r=128 t=153 | 2.1s | $0.001399 |
| `gpt-5.1` | `openai/gpt-5.1` | ✅ | p=15 r=0 t=25 | 690ms | $0.000119 |
| `gpt-5.1-chat` | `openai/gpt-5.1-chat-latest` | ✅ | p=15 r=0 t=25 | 1.1s | $0.000119 |
| `gpt-5.1-codex` | `openai/gpt-5.1-codex` | ✅ | p=15 r=0 t=29 | 933ms | $0.000159 |
| `gpt-5.1-codex-mini` | `openai/gpt-5.1-codex-mini` | ✅ | p=15 r=0 t=43 | 1.5s | $0.00006 |
| `gpt-5.1-codex-max` | `openai/gpt-5.1-codex-max` | ✅ | p=15 r=0 t=83 | 1.4s | $0.000699 |
| `gpt-5.1-high` | `openai/gpt-5.1` | ✅ | p=15 r=16 t=41 | 823ms | $0.000279 |
| `gpt-5.2` | `openai/gpt-5.2` | ✅ | p=15 r=0 t=19 | 587ms | $0.000082 |
| `gpt-5.2-chat` | `openai/gpt-5.2-chat-latest` | ✅ | p=15 r=0 t=25 | 1.2s | $0.000166 |
| `gpt-5.2-codex` | `openai/gpt-5.2-codex` | ✅ | p=15 r=0 t=31 | 892ms | $0.00025 |
| `gpt-5.2-high` | `openai/gpt-5.2` | ✅ | p=15 r=0 t=19 | 592ms | $0.000082 |
| `gpt-5.2-pro` | `openai/gpt-5.2` | ✅ | p=15 r=0 t=19 | 587ms | $0.000082 |
| `gpt-5.3-codex` | `openai/gpt-5.3-codex` | ✅ | p=15 r=0 t=20 | 1.0s | $0.000096 |
| `gpt-5.3-codex-high` | `openai/gpt-5.3-codex` | ✅ | p=15 r=13 t=35 | 1.2s | $0.000306 |
| `gpt-5.3-codex-xhigh` | `openai/gpt-5.3-codex` | ✅ | p=15 r=0 t=20 | 1.1s | $0.000096 |
| `gpt-5.4` | `openai/gpt-5.4` | ✅ | p=15 r=0 t=19 | 862ms | $0.000098 |
| `gpt-5.4-mini` | `openai/gpt-5.4-mini` | ✅ | p=15 r=0 t=19 | 494ms | $0.000029 |
| `gpt-5.4-nano` | `openai/gpt-5.4-nano` | ✅ | p=15 r=0 t=19 | 502ms | $0.000008 |
| `gpt-5.4-high` | `openai/gpt-5.4` | ✅ | p=15 r=33 t=58 | 1.1s | $0.000682 |
| `gpt-5.4-xhigh` | `openai/gpt-5.4` | ✅ | p=15 r=29 t=54 | 1.2s | $0.000623 |
| `gpt-5.4-mini-high` | `openai/gpt-5.4-mini` | ✅ | p=15 r=9 t=34 | 666ms | $0.000097 |
| `gpt-5.4-mini-xhigh` | `openai/gpt-5.4-mini` | ✅ | p=15 r=13 t=38 | 620ms | $0.000115 |
| `gpt-5.4-nano-high` | `openai/gpt-5.4-nano` | ✅ | p=15 r=0 t=19 | 464ms | $0.000008 |
| `gpt-5.4-nano-xhigh` | `openai/gpt-5.4-nano` | ✅ | p=15 r=10 t=35 | 702ms | $0.000028 |
| `gpt-5.4-pro` | `openai/gpt-5.4` | ✅ | p=15 r=0 t=19 | 792ms | $0.000098 |
| `gpt-5.5` | `openai/gpt-5.5` | ✅ | p=15 r=0 t=19 | 1.5s | $0.000195 |
| `gpt-5.5-low` | `openai/gpt-5.5` | ✅ | p=15 r=5 t=30 | 1.2s | $0.000525 |
| `gpt-5.5-medium` | `openai/gpt-5.5` | ✅ | p=15 r=6 t=31 | 1.3s | $0.000555 |
| `gpt-5.5-high` | `openai/gpt-5.5` | ✅ | p=15 r=6 t=31 | 1.3s | $0.000555 |
| `gpt-5.5-xhigh` | `openai/gpt-5.5` | ✅ | p=15 r=6 t=31 | 1.3s | $0.000555 |
| `gpt-5.5-pro` | `openai/gpt-5.5-pro` | ✅ | p=15 r=10 t=32 | 8.8s | $0.00351 |
| `o1` | `openai/o1` | ✅ | p=15 r=128 t=157 | 2.6s | $0.008745 |
| `o1-high` | `openai/o1` | ✅ | p=15 r=192 t=222 | 2.8s | $0.012645 |
| `google/claude-haiku-4-5` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=17 r=0 m=4 t=21 | 582ms | $0.000037 |
| `google/claude-haiku-4-5-high` | `vertex_ai/claude-haiku-4-5@20251001` | ✅ | p=46 r=27 m=14 t=87 | 1.8s | $0.000251 |
| `google/claude-sonnet-4` | `vertex_ai/claude-sonnet-4@20250514` | ✅ | p=17 r=0 m=4 t=21 | 868ms | $0.000111 |
| `google/claude-sonnet-4-high` | `vertex_ai/claude-sonnet-4@20250514` | ✅ | p=46 r=42 m=15 t=103 | 2.0s | $0.000993 |
| `google/claude-sonnet-4-5` | `vertex_ai/claude-sonnet-4-5@20250929` | ✅ | p=17 r=0 m=4 t=21 | 848ms | $0.000111 |
| `google/claude-sonnet-4-5-high` | `vertex_ai/claude-sonnet-4-5@20250929` | ✅ | p=46 r=44 m=16 t=106 | 1.8s | $0.001038 |
| `google/claude-sonnet-4-6` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 1.6s | $0.000111 |
| `google/claude-sonnet-4-6-high` | `vertex_ai/claude-sonnet-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 903ms | $0.000111 |
| `google/claude-opus-4` | `vertex_ai/claude-opus-4@20250514` | ✅ | p=17 r=0 m=4 t=21 | 1.6s | $0.000555 |
| `google/claude-opus-4-high` | `vertex_ai/claude-opus-4@20250514` | ✅ | p=46 r=39 m=15 t=100 | 2.8s | $0.00474 |
| `google/claude-opus-4-1` | `vertex_ai/claude-opus-4-1@20250805` | ✅ | p=17 r=0 m=4 t=21 | 8.1s | $0.000555 |
| `google/claude-opus-4-1-high` | `vertex_ai/claude-opus-4-1@20250805` | ✅ | p=17 r=0 m=4 t=21 | 1.4s | $0.000555 |
| `google/claude-opus-4-5` | `vertex_ai/claude-opus-4-5@20251101` | ✅ | p=17 r=0 m=4 t=21 | 1.8s | $0.000185 |
| `google/claude-opus-4-5-high` | `vertex_ai/claude-opus-4-5@20251101` | ✅ | p=46 r=15 m=12 t=73 | 1.2s | $0.000905 |
| `google/claude-opus-4-6` | `vertex_ai/claude-opus-4-6@default` | ✅ | p=17 r=0 m=4 t=21 | 3.3s | $0.000185 |
| `google/claude-opus-4-6-high` | `vertex_ai/claude-opus-4-6@default` | ✅ | p=17 r=0 m=5 t=22 | 913ms | $0.00021 |
| `google/claude-opus-4-7` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 976ms | $0.000285 |
| `google/claude-opus-4-7-low` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 888ms | $0.000285 |
| `google/claude-opus-4-7-medium` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 1.4s | $0.000285 |
| `google/claude-opus-4-7-high` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 890ms | $0.000285 |
| `google/claude-opus-4-7-xhigh` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 1.2s | $0.000285 |
| `google/claude-opus-4-7-max` | `vertex_ai/claude-opus-4-7@default` | ✅ | p=27 r=0 m=6 t=33 | 2.7s | $0.000285 |
| `google/claude-opus-4-8` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.1s | $0.00021 |
| `google/claude-opus-4-8-low` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.1s | $0.00021 |
| `google/claude-opus-4-8-medium` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.5s | $0.00021 |
| `google/claude-opus-4-8-high` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.3s | $0.00021 |
| `google/claude-opus-4-8-xhigh` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 3.6s | $0.00021 |
| `google/claude-opus-4-8-max` | `vertex_ai/claude-opus-4-8@default` | ✅ | p=22 r=0 m=4 t=26 | 1.0s | $0.00021 |
| `amazon/claude-haiku-3-5` | `bedrock/us.anthropic.claude-3-5-haiku-20241022-v1:0` | ✅ | p=17 r=0 m=5 t=22 | 853ms | $0.000034 |
| `amazon/claude-haiku-4-5` | `bedrock/us.anthropic.claude-haiku-4-5-20251001-v1:0` | ✅ | p=17 r=0 m=4 t=21 | 980ms | $0.000041 |
| `amazon/claude-haiku-4-5-high` | `bedrock/us.anthropic.claude-haiku-4-5-20251001-v1:0` | ✅ | p=46 r=27 m=14 t=87 | 1.5s | $0.000276 |
| `amazon/claude-sonnet-4` | `bedrock/us.anthropic.claude-sonnet-4-20250514-v1:0` | ✅ | p=17 r=0 m=4 t=21 | 871ms | $0.000111 |
| `amazon/claude-sonnet-4-high` | `bedrock/us.anthropic.claude-sonnet-4-20250514-v1:0` | ✅ | p=46 r=42 m=13 t=101 | 1.5s | $0.000963 |
| `amazon/claude-sonnet-4-5` | `bedrock/us.anthropic.claude-sonnet-4-5-20250929-v1:0` | ✅ | p=17 r=0 m=4 t=21 | 2.0s | $0.000122 |
| `amazon/claude-sonnet-4-5-high` | `bedrock/us.anthropic.claude-sonnet-4-5-20250929-v1:0` | ✅ | p=46 r=27 m=13 t=86 | 2.2s | $0.000812 |
| `amazon/claude-sonnet-4-6` | `bedrock/us.anthropic.claude-sonnet-4-6` | ✅ | p=17 r=0 m=4 t=21 | 1.0s | $0.000122 |
| `amazon/claude-sonnet-4-6-high` | `bedrock/us.anthropic.claude-sonnet-4-6` | ✅ | p=17 r=0 m=4 t=21 | 2.0s | $0.000122 |
| `amazon/claude-opus-4-1` | `bedrock/us.anthropic.claude-opus-4-1-20250805-v1:0` | ✅ | p=17 r=0 m=4 t=21 | 3.5s | $0.000555 |
| `amazon/claude-opus-4-1-high` | `bedrock/us.anthropic.claude-opus-4-1-20250805-v1:0` | ✅ | p=46 r=36 m=15 t=97 | 6.0s | $0.004515 |
| `amazon/claude-opus-4-5` | `bedrock/us.anthropic.claude-opus-4-5-20251101-v1:0` | ✅ | p=17 r=0 m=4 t=21 | 1.9s | $0.000204 |
| `amazon/claude-opus-4-5-high` | `bedrock/us.anthropic.claude-opus-4-5-20251101-v1:0` | ✅ | p=46 r=15 m=12 t=73 | 1.7s | $0.000995 |
| `amazon/claude-opus-4-6` | `bedrock/us.anthropic.claude-opus-4-6-v1` | ✅ | p=17 r=0 m=4 t=21 | 2.1s | $0.000204 |
| `amazon/claude-opus-4-6-high` | `bedrock/us.anthropic.claude-opus-4-6-v1` | ✅ | p=17 r=15 m=20 t=52 | 1.9s | $0.001056 |
| `amazon/claude-opus-4-7` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-7-low` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-7-medium` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-7-high` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-7-xhigh` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-7-max` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8-low` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8-medium` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8-high` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8-xhigh` | -- | ❌ | -- | -- | -- |
| `amazon/claude-opus-4-8-max` | -- | ❌ | -- | -- | -- |
| `devstral-2` | `bedrock/mistral.devstral-2-123b` | ✅ | p=12 r=0 m=2 t=14 | 613ms | $0.000009 |
| `mistral-large-3` | `bedrock/mistral.mistral-large-3-675b-instruct` | ✅ | p=12 r=0 m=2 t=14 | 450ms | $0.000009 |
| `nemotron-super-3` | `bedrock/nvidia.nemotron-super-3-120b` | ✅ | p=25 r=0 m=2 t=27 | 537ms | $0.000005 |
| `nemotron-nano-3` | `bedrock/nvidia.nemotron-nano-3-30b` | ✅ | p=25 r=0 m=2 t=27 | 606ms | $0.000002 |
| `nemotron-nano-vl` | `bedrock/nvidia.nemotron-nano-12b-v2` | ✅ | p=24 r=0 m=3 t=27 | 449ms | $0.000007 |
| `nova-premier-1` | -- | ❌ | -- | -- | -- |
| `nova-pro-1` | `bedrock/amazon.nova-pro-v1:0` | ✅ | p=10 r=0 m=18 t=28 | 592ms | $0.000066 |
| `nova-micro-1` | `bedrock/amazon.nova-micro-v1:0` | ✅ | p=10 r=0 m=2 t=12 | 441ms | $0.000001 |
| `gemini-2.0-flash` | -- | ❌ | -- | -- | -- |
| `gemini-2.0-flash-lite` | -- | ❌ | -- | -- | -- |
| `gemini-2.5-flash` | `vertex_ai/gemini-2.5-flash` | ✅ | p=9 r=23 m=1 t=33 | 737ms | $0.000063 |
| `gemini-2.5-flash-high` | `vertex_ai/gemini-2.5-flash` | ✅ | p=9 r=21 m=1 t=31 | 1.2s | $0.000058 |
| `gemini-2.5-flash-lite` | `vertex_ai/gemini-2.5-flash-lite` | ✅ | p=9 m=1 t=10 | 662ms | $0.000001 |
| `gemini-2.5-pro` | `vertex_ai/gemini-2.5-pro` | ✅ | p=9 r=215 m=1 t=225 | 3.3s | $0.002171 |
| `gemini-2.5-pro-high` | `vertex_ai/gemini-2.5-pro` | ✅ | p=9 r=111 m=1 t=121 | 2.8s | $0.001131 |
| `gemini-3-flash` | `vertex_ai/gemini-3-flash-preview` | ✅ | p=9 r=132 m=1 t=142 | 4.2s | $0.000404 |
| `gemini-3-flash-high` | `vertex_ai/gemini-3-flash-preview` | ✅ | p=9 r=118 m=1 t=128 | 3.4s | $0.000362 |
| `gemini-3-flash-priority` | `vertex_ai/gemini-3-flash-preview` | ✅ | p=9 r=46 m=1 t=56 | 2.6s | $0.000145 |
| `gemini-3-flash-high-priority` | `vertex_ai/gemini-3-flash-preview` | ✅ | p=9 r=46 m=1 t=56 | 3.2s | $0.000145 |
| `gemini-3.1-flash-lite` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 m=1 t=10 | 718ms | $0.000004 |
| `gemini-3.1-flash-lite-high` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 r=90 m=1 t=100 | 2.6s | $0.000139 |
| `gemini-3.1-flash-lite-priority` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 m=1 t=10 | 747ms | $0.000004 |
| `gemini-3.1-flash-lite-high-priority` | `vertex_ai/gemini-3.1-flash-lite-preview` | ✅ | p=9 r=113 m=1 t=123 | 2.9s | $0.000173 |
| `gemini-3.1-pro` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=128 m=1 t=138 | 2.5s | $0.001566 |
| `gemini-3.1-pro-high` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=119 m=1 t=129 | 3.7s | $0.001458 |
| `gemini-3.1-pro-priority` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=113 m=1 t=123 | 2.4s | $0.001386 |
| `gemini-3.1-pro-high-priority` | `vertex_ai/gemini-3.1-pro-preview` | ✅ | p=9 r=167 m=1 t=177 | 4.2s | $0.002034 |
| `gemini-3.5-flash` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=71 m=1 t=81 | 1.1s | $0.000661 |
| `gemini-3.5-flash-high` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=120 m=1 t=130 | 2.7s | $0.001102 |
| `gemini-3.5-flash-priority` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=126 m=1 t=136 | 1.4s | $0.001156 |
| `gemini-3.5-flash-high-priority` | `vertex_ai/gemini-3.5-flash` | ✅ | p=9 r=129 m=1 t=139 | 2.7s | $0.001183 |
| `google/gpt-oss-120b` | `vertex_ai/openai/gpt-oss-120b-maas` | ✅ | p=76 t=106 | 703ms | $0.00002 |
| `google/gpt-oss-20b` | `vertex_ai/openai/gpt-oss-20b-maas` | ✅ | p=76 t=108 | 886ms | $0.00001 |
| `google/gpt-oss-120b-high` | `vertex_ai/openai/gpt-oss-120b-maas` | ✅ | p=76 t=150 | 708ms | $0.000046 |
| `google/gpt-oss-20b-high` | `vertex_ai/openai/gpt-oss-20b-maas` | ✅ | p=76 t=119 | 751ms | $0.000014 |
| `google/deepseek-r1` | -- | ❌ | -- | -- | -- |
| `google/qwen-3-coder` | `vertex_ai/qwen/qwen3-coder-480b-a35b-instruct-maas` | ✅ | p=17 t=19 | 1.3s | $0.000021 |
| `google/qwen-3` | `vertex_ai/qwen/qwen3-235b-a22b-instruct-2507-maas` | ✅ | p=17 t=19 | 808ms | $0.000006 |
| `google/gemma-4` | -- | ❌ | -- | -- | -- |
| `google/codestral` | -- | ❌ | -- | -- | -- |
| `google/glm-5` | `vertex_ai/zai-org/glm-5-maas` | ✅ | p=14 t=109 | 2.7s | $0.000318 |
| `google/glm-4.7` | `vertex_ai/zai-org/glm-4.7-maas` | ✅ | p=14 t=31 | 883ms | $0.000046 |
| `google/deepseek-3.2` | `vertex_ai/deepseek-ai/deepseek-v3.2-maas` | ✅ | p=13 t=15 | 65.2s | $0.000011 |
| `google/kimi-k2-thinking` | `vertex_ai/moonshotai/kimi-k2-thinking-maas` | ✅ | p=16 t=76 | 1.0s | $0.00016 |
| `google/minimax-m2` | -- | ❌ | -- | -- | -- |
| `google/grok-4.20-reasoning` | `vertex_ai/xai/grok-4.20-reasoning` | ✅ | p=338 r=171 t=510 | 1.3s | $0.001702 |
| `google/grok-4.1-non-reasoning` | `vertex_ai/xai/grok-4.1-fast-non-reasoning` | ✅ | p=680 r=0 t=681 | 497ms | $0.000037 |
| `google/grok-4.1-reasoning` | `vertex_ai/xai/grok-4.1-fast-reasoning` | ✅ | p=668 r=143 t=812 | 3.6s | $0.000107 |
| `google/grok-4.3` | -- | ❌ | -- | -- | -- |
| `amazon/llama-4-maverick` | `bedrock/us.meta.llama4-maverick-17b-instruct-v1:0` | ✅ | p=44 r=0 m=2 t=46 | 426ms | $0.000012 |
| `amazon/llama-4-scout` | `bedrock/us.meta.llama4-scout-17b-instruct-v1:0` | ✅ | p=44 r=0 m=2 t=46 | 297ms | $0.000009 |
| `amazon/gpt-oss-120b` | `bedrock/openai.gpt-oss-120b-1:0` | ✅ | p=76 r=26 m=11 t=113 | 1.0s | $0.000034 |
| `amazon/gpt-oss-20b` | `bedrock/openai.gpt-oss-20b-1:0` | ✅ | p=76 r=23 m=11 t=110 | 5.1s | $0.000016 |
| `lbl/gemma-4` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 2.3s | -- |
| `lbl/gemma-4-thinking` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=95 | 533ms | -- |
| `lbl/gemma-4-mini` | `hosted_vllm/gemma-4-mini` | ✅ | p=76 t=106 | 1.0s | -- |
| `lbl/gemma-4-mini-thinking` | `hosted_vllm/gemma-4-mini-thinking` | ✅ | p=76 t=121 | 1.4s | -- |
| `lbl/gpt-oss-20b` | `hosted_vllm/gpt-oss-20b` | ✅ | p=76 t=99 | 857ms | -- |
| `lbl/gpt-oss-20b-high` | `hosted_vllm/gpt-oss-20b-high` | ✅ | p=76 t=111 | 1.2s | -- |
| `lbl/cborg-chat` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 200ms | -- |
| `lbl/cborg-deepthought` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=73 | 9.7s | -- |
| `lbl/cborg-coder` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=107 | 13.8s | -- |
| `lbl/cborg-coder-fast` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 206ms | -- |
| `lbl/cborg-mini` | `hosted_vllm/gemma-4-mini-thinking` | ✅ | p=76 t=105 | 1.0s | -- |
| `lbl/cborg-mini-fast` | `hosted_vllm/gemma-4-mini` | ✅ | p=76 t=116 | 1.3s | -- |
| `lbl/cborg-privacy-filter` | `hosted_vllm/privacy-filter` | ✅ | p=6 t=12 | 313ms | -- |
| `lbl/cborg-safeguard` | `hosted_vllm/gpt-oss-safeguard-20b` | ✅ | p=76 t=105 | 317ms | -- |
| `lbl/cborg-safeguard-high` | `hosted_vllm/gpt-oss-safeguard-20b-high` | ✅ | p=76 t=108 | 344ms | -- |
| `lbl/cborg-ocr` | `hosted_vllm/gemma-4` | ✅ | p=22 t=24 | 208ms | -- |
| `lbl/cborg-ocr-fast` | `hosted_vllm/gemma-4-mini` | ✅ | p=76 t=104 | 980ms | -- |
| `lbl/cborg-vision` | `hosted_vllm/gemma-4-thinking` | ✅ | p=25 t=97 | 376ms | -- |
| `lbl/cborg-vision-fast` | `hosted_vllm/gemma-4-mini-thinking` | ✅ | p=76 t=96 | 783ms | -- |

### Embedding Models

| Model | Underlying Model | Status | Dimensions | Time | Cost |
| ----- | ---------------- | :----: | :--------: | ---: | ---: |
| `nomic-embed-text` | `openai/nomic-embed-text` | ✅ | 768 | 224ms | -- |
| `nomic-embed-vision` | -- | ❌ | -- | -- | -- |
| `nomic-embed-code` | -- | ❌ | -- | -- | -- |
| `nomic-embed-text-test` | `openai/nomic-embed-text` | ✅ | 768 | 1.2s | -- |
| `nomic-embed-vision-test` | -- | ❌ | -- | -- | -- |
| `nomic-embed-code-test` | -- | ❌ | -- | -- | -- |
| `text-embedding-ada-002` | `openai/text-embedding-ada-002` | ✅ | 1536 | 486ms | $0.000001 |
| `nova-2-embed-multimodal` | `bedrock/amazon.nova-2-multimodal-embeddings-v1:0` | ✅ | 3072 | 661ms | $0.000104 |
| `titan-embed-text-v1` | `bedrock/amazon.titan-embed-text-v1` | ✅ | 1536 | 332ms | $0.000001 |
| `titan-embed-image-v1` | `bedrock/amazon.titan-embed-image-v1` | ✅ | 1024 | 336ms | $0.000009 |
| `titan-embed-text-v2` | `bedrock/amazon.titan-embed-text-v2:0` | ✅ | 1024 | 334ms | $0.000002 |
| `cohere-embed-multilingual-v3` | `bedrock/cohere.embed-multilingual-v3` | ✅ | 1024 | 509ms | $0.000001 |
| `cohere-embed-english-v3` | `bedrock/cohere.embed-english-v3` | ✅ | 1024 | 355ms | $0.000001 |
| `cohere-embed-v4` | `bedrock/cohere.embed-v4:0` | ✅ | 1536 | 581ms | $0.000001 |
| `gemini-embedding-001` | `vertex_ai/gemini-embedding-001` | ✅ | 3072 | 569ms | $0.000001 |
| `text-embedding-004` | `vertex_ai/text-embedding-004` | ✅ | 768 | 323ms | $0.000001 |
| `lbl/nomic-embed-text` | `openai/nomic-embed-text` | ✅ | 768 | 1.3s | -- |
| `lbl/nomic-embed-vision` | -- | ❌ | -- | -- | -- |
| `lbl/nomic-embed-code` | -- | ❌ | -- | -- | -- |
| `lbl/nomic-embed-text-test` | `openai/nomic-embed-text` | ✅ | 768 | 1.2s | -- |
| `lbl/nomic-embed-vision-test` | -- | ❌ | -- | -- | -- |
| `lbl/nomic-embed-code-test` | -- | ❌ | -- | -- | -- |

---

*Auto-generated by `cborg-etc/bin/test-all-models.sh`. Run the script and publish to update.*
