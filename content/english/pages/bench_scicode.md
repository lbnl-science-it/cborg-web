---
title: "SciCode Bench"
# meta title
meta_title: ""
# meta description
description: "CBorg model performance on SciCode"
# save as draft
draft: false
---

### About SciCode

The [SciCode](https://scicode-bench.github.io/) benchmark is a scientist-curated benchmark for scientific programming tasks utilizing Python. 65 main problems are provided with gold-standard solutions covering Chemistry, Materials Science, Biology, Math, and Physics. Each main problem is further divided into sub-problems, all of which must be solved correctly to achieve the main result. A dataset is included for verifying calculations.

We run this benchmark with "background" enabled, meaning the model is given a detailed description of the mathematics and theory for the problem to be solved. Enabling background is not the "standard setup" (per the cited paper), however this choice gives small models a better chance to compete by shifting the emphasis from general knowledge of scientific concepts toward scientific instruction following.

### Results

*Note: These findings are based on internal research and do not constitute an endorsement of any model for any specific purpose. This list will be updated frequently - please check back here for updates.*

![SciCode Benchmark](/images/scicode_bench_20250829.jpg) 

| Model                              | % Correct              | Cost        | Note  | Config                                       | Date       |
| ------------------------           | ---------------------- | ----------- | ---- | -----------------------------------------    | ---------- |
| **google/gemini-pro-high**         | 16.9%                  | $12.60      | 😎 💰  | Gemini 2.5 Pro reasoning_effort="high"       | 2025-08-22 |
| **anthropic/claude-sonnet-high**   | 13.8%                  | $10.49      | ✅ 💰  | Sonnet 4.0 reasoning_budget=8192             | 2025-08-22 |
| google/gemini-pro                  | 13.8%                  | $25.33      | ⛔    | Gemini 2.5 Pro                               | 2025-08-22 |
| xai/grok-4-0709                    | 13.8%                  | $7.13       | 😢    | xAI Grok 4 0709 (unable to complete)          | 2025-08-24 |
| **anthropic/claude-sonnet**        | 12.3%                  | $5.32       | ✅ 💰  | Sonnet 4.0 reasoning=false                   | 2025-08-22 |
| anthropic/claude-opus-high         | 12.3%                  | $45.00      | ⛔    | Opus 4.1 reasoning_budget=8192               | 2025-08-22 |
| anthropic/claude-opus              | 12.3%                  | $28.85      | ⛔    | Opus 4.1 reasoning=false                     | 2025-08-22 |
| **gcp/qwen-3-coder**               | 12.3%                  | $1.50       | 😎 ⚠️  | qwen3-coder-480b-a35b-instruct               | 2025-08-22 |
| openai/o3-high                     | 10.8%                  | $6.14       |      | OpenAI o3 reasoning_effort="high"            | 2025-08-22 |
| azure/deepseek-r1                  | 10.8%                  | $10.00      | ⚠️    | Azure Foundry MSAI-DS-R1                     | 2025-08-23 |
| **xai/grok-code-fast-1**           | 10.8%                  | $2.09       |       | xai Code Fast 1                             | 2025-08-29 |
| **xai/grok-3-mini**                | 10.8%                  | $0.94       | ✅    | xAI Grok 3 Mini                             | 2025-08-29 |
| **gcp/gpt-oss-120b-high**          | 10.8%                  | $0.36       | 😎    | gpt-oss-120b reasoning_effort="high"         | 2025-08-24 |
| **gcp/gpt-oss-20b-high**           | 9.3%                   | $0.19       | 😎    | gpt-oss-20b reasoning_effort="high"          | 2025-08-24 |
| **openai/o4-mini**                 | 9.3%                   | $3.21       | ✅    | OpenAI o4-mini reasoning_effort="high"       | 2025-08-22 |
| openai/gpt-5                       | 7.6%                   | $9.60       | ⛔    | OpenAI gpt-5                                 | 2025-08-22 |
| **openai/gpt-5-mini**              | 7.6%                   | $1.20       | ✅    | OpenAI gpt-5-mini                            | 2025-08-22 |
| google/gemini-flash-high           | 7.6%                   | $3.12       |      | Gemini 2.5 Flash reasoning_effort="high"     | 2025-08-22 |
| xai/grok-3                         | 7.6%                   | $3.96       |      | xAI Grok 3                                   | 2025-08-23 |
| meta/llama-4-maverick              | 7.6%                   | $0.24       |      | Vertex AI Llama 4 Maverick                     | 2025-08-24 |
| **gcp/gpt-oss-120b**               | 7.6%                   | $0.35       | ✅    | gpt-oss-120b                                 | 2025-08-22 |
| **gcp/gpt-oss-20b**                | 6.1%                   | $0.14       | ✅    | gpt-oss-20b                                  | 2025-08-22 |
| **openai/gpt-5-nano**              | 6.1%                   | $0.47       | ✅    | OpenAI gpt-5-nano                            | 2025-08-22 |
| gcp/deepseek-r1                    | 6.1%                   | $10.00      | ⛔ ⚠️  | Vertex AI DeepSeek R1-0528                   | 2025-08-23 |
| anthropic/claude-haiku             | 3%                     | $1.72       | ⛔    | Claude 3.5 Haiku                             | 2025-08-22 |
| gcp/codestral                      | 1.5%                   | $0.21       |      | Mistral AI Codestral                          | 2025-08-22 |
| meta/llama-4-scout                 | 0.0%                   | $0.24       |      | Vertex AI Llama 4 Scout                        | 2025-08-22 |


### Explanation of Notes

😎: Excellent cost-performance efficiency in it's performance tier.

✅: Reasonable cost-performance efficiency in performance tier.

😢: Model was unable to complete benchmark (e.g. infinite loop in reasoning stage). Results are estimated.

⛔: Unusually expensive for performance tier. Consider alternatives.

💰: Due to high cost, the model is best reserved for high-complexity tasks.

⚠️: May contain censorship and/or has weak gaurdrails compared to alternatives. Use with caution.

### Current CBorg Model Mappings

**lbl/cborg-coder**: gpt-oss-120b-high

**lbl/cborg-deepthought**: gpt-oss-120b-high

**lbl/cborg-mini**: gpt-oss-20b-high

**lbl/cborg-chat**: llama-4-scout

### Changelog

_Aug 29th, 2025_

- Re-calculated Grok 3 Mini costs based on xAI API costs (approx 50% cheaper than Azure Foundry costs)
- Added results for new Grok Code Fast 1 model

_Aug 24, 2025_

- Corrected error in gpt-oss benchmarks with -high setting and updated scores
- Added xAI Grok 4 0709 - Model was unable to complete 4 problem sets after 2 hours of retries.
- Added Meta Llama 4 models.

_Aug 23, 2025_

- Added Azure MSAI-DS-R1 (DeepSeek R1 post-trained by Microsoft AI)
- R-ran Qwen 3 Coder benchmark to verify cost (no change)
- Added xAI Grok 3. Grok 3 Mini was unable to complete benchmark - will try again
- Added DeepSeek R1 0528 from Vertex AI
