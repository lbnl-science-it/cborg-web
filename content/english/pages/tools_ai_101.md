---
title: "Overview / Best Practices / Model Selection"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

##### Contents

- Coding Tools
- Technical Writing
- Data Extraction & Summarization

---------------

### Getting Started with Coding Tools

#### Recommended Tools

Currently, we have found the best results with the following coding tools:

- **VS Code with RooCode**: Works well with CBorg API - powerful agentic features and easy to switch between models.
- **VS Code with Continue**: Works well for more targeted code edits (insertion, line editing).
- **Claude Code**: Excellent overall. Can be very expensive in large code bases. Can integrate with VS Code to show diffs

You may also get good results with other tools - if you do, please let us know about it!

#### Unsupported Tools:

- **Cursor**: You need a subscription from Cursor for best results, which is not available from CBorg
- **Github Copilot**: Not supported by CBorg - you need a subscription from GitHub to use it

#### Limitations of AI Coders:

- **Knowledge Cutoff Date**: Models are trained on a corpus of data that is typically 6-12 months old and cannot generate code for features or APIs newer than the model's cutoff date.
- **Poor performance on obscure APIs**: Models will hallucinate frequently when generating code for APIs that are obscure, due to lack of sufficient examples in their training data. Consider augmenting your coder's knowledge with access to the API documentation, e.g. using the Context7 MCP tool.
- **Context Length Limit**: Models can only ingest a finite amount of code at inference time, limiting its total field of view in large codebases. Use of indexing (vector search) can help but is not guaranteed to ensure the coding agent is aware of all relevant code to a prompt.
- **Context Rot**: Models are easily overwhelmed when presented with multiple instructions in a prompt, and randomly "forget" to follow instructions particularly when the context length becomes long. Keep prompts as simple as possible and do not attempt to perform multiple tasks in a single prompt.
- **Poor adherence to DRY principles**: LLM-generated code tends to have a lower "information density" due to excessive repetition and underutilization of abstractions, leading to code that is less efficient to execute and more difficult to maintain. 
- **Bias toward on Legacy Solutions**: LLMs tend to over-use legacy code libraries because there is more documentation for these in the training data, causing underutilization of newer and better alternatives.
- **Low Quality of Tab-Completion**: "Fill-in-the-middle" models which are used for tab-style autocomplete rely on extremely small models, which have very low performance on complex coding tasks. Large models cannot be used for tab completion because of high latency.

### Model Selection for Coding

_Last updated: 2025-08-25_

**Recommended Choices**

| Model                          | Cost | Speed  | Comments                                                          |
| -----------------              | ---- | ----   | ----------------------------------------------------------------- |
| `lbl/cborg-coder`              | Free | Fast   | Good performance and fast. Unlimited usage                        |
| `google/gemini-pro-high`       | $$$  | Medium | Best for complex coding, scientific coding. Expensive - watch usage |
| `anthropic/claude-sonnet-high` | $$$  | Medium | Good for complex coding. Expensive. Recommended for ClaudeCode CLI |
| `xai/grok-3-mini`              | $    | Medium | Solid performer and very low cost |
| `gcp/qwen-3-coder`*            | $    | Medium | Excellent performance and low cost. See comments |
| `openai/o3-high`               | $$$  | Slow   | Good performance. Recommended model for OpenAI Codex CLI |
| `openai/o4-mini-high`          | $$   | Slow   | Good performance. Recommended model for OpenAI Codex CLI |

**Currently Not Recommended**

| Model                          | Cost | Speed  | Comments                                                          |
| -----------------              | ---- | ----   | ----------------------------------------------------------------- |
| `google/gemini-pro`            | $$$  | Medium | Recommended to use the -high variant instead |
| `anthropic/claude-opus`        | $$$$ | Slow   | Very expensive, with minimal improvements over Sonnet           |
| `anthropic/claude-opus-high`   | $$$$ | Slow   | Very expensive, with minimal improvements over Sonnet           |
| `xai/grok-3`                   | $$   | Medium | Recommended alternative xai/grok-3-mini which has reasoning     |
| `openai/gpt-5`                 | $$   | Medium | Recommended alternative openai/o3-high or openai/o4-mini-high  |
| `lbl/cborg-chat`               | Free | Slow   | Underperforming |
| `azure/deepseek-r1`*           | $$$  | Slow   | Good performance but excessive reasoning. See comments |

Comments:

- **Qwen 3 Coder**: Model contains censorship and may have weak gaurdrails. Use with caution.
- **Azure DeepSeek R1**: MSAI-DS-R1 model is fine tuned by Microsoft AI to remove censorship and improve performance, but generates excessive reasoning tokens on hard tasks which hurts cost efficiency. May have weak guardrails compared to alternatives. Use with caution.

---------

### Models for Technical Writing

Recommended Best Practices: 

- **Style Emulation**: Using a custom system prompt, provide a large corpus of sample writing and ask the model to emulate the style and language. This is more effective for maintaining style than using general descriptions of writing style.
- **Complex Document Formation**: Use multiple prompts to construct the document one paragraph or one section at a time. This is more scalable and will maintain accuracy and tone throughout.

Best models: `google/gemini-pro-high`, `anthropic/claude-opus-high`, `openai/o3-high`

---------

### Models for Data Extraction / Summarization

Recommended Best Practices: 
- Use a small / lightweight model and extract data *one piece at a time*.
- Do not overload model instructions by asking too many questions at once - context rot will cause poor performance. 
- Use chain of thought prompting to enhance accuracy, or use a reasoning model.
- Save the CoT result and/or reasoning content to improve transparency when debugging data extraction runs.
- Add line numbers to your data, then ask AI to include line number references in extraction, so you can debug/trace where it found information.
- Structure prompts with all bulk data and static content first, then dynamic data/questions at the end. This will leverage implicit prompt caching and result in faster inference time and lower cost on endpoints with implicit prompt caching (all openai/ models)

### Models for Data Extraction

_Last updated: 2025-08-25_

**Recommended Selections**

| Model                          | Cost | Speed  | Comments                                                           |
| -----------------              | -- | ---- | ----------------------------------------------------------------- |
| `lbl/cborg-deepthought`        | Free | Medium | Unlimited usage |
| `lbl/cborg-mini`               | Free | Fast | Unlimited usage |
| `lbl/cborg-vision`              | Free | Medium | For vision extraction - unlimited usage |
| `openai/gpt-5-mini`            | $$   | Medium   | Low cost                |
| `openai/gpt-5-nano`            | $    | Fast   | Very Low cost with good performance                |
| `aws/llama-4-maverick`         | $    | Medium   | Very low cost with good performance and long context                |
| `google/gemini-flash-high`     | $$   | Medium | More expensive than alternatives - use if you need huge context |

**Not Currently Recommended**

| Model                       | Cost | Speed  | Comments                                                           |
| -----------------           | -- | ---- | ----------------------------------------------------------------- |
| `google/gemini-flash`       | $    | Fast   | Much better performance with reasoning (-high variant) |
| `anthropic/claude-haiku`    | $$     | Medium   | High cost and underperforming relative to other small models |
| `openai/gpt-5`              | $$$    | Medium   | Cost-prohibitive for scaling up to large data extraction tasks |

Example Code (Not a working example - just a starting point):

{{< highlight python >}}
import json

def ask_cborg(query):

    # helper function to send query to a model
    # see other example code to implement this
    ...

fields = {
    'project': 'The name of the project',
    'instrument': 'The name of the scientific instrument',
    'status': 'The status of the scientific instrument'
}

data = {}

for key, query in fields.items():

    data[key] = json.loads(ask_cborg(
        "Read the following document and then respond to the question below.\n" + 
        "[[ * Start of Document * ]]\n" + 
        document + 
        "\n[[ * End of Document ]]\n" + 
        f"What is {query}? First answer the question in natural language, describing how it relates to the document, then provide a concise final answer." + 
        "Use the following JSON template: " +
        "{ 'answer': Your answer in natural language, 'final_answer': The final answer. }\n" +
        "Only output the JSON object without any additional commentary."
      ))['final_answer']

{{< /highlight >}}

Using a loop over each key value as shown above will work better than attempting to extract a large number of items in a single query.

This approach can also be scaled to a very large number of items without any loss in accuracy.

Use of a small model is recommended to reduce cost. Prompt caching can also reduce cost as the preamble for each query is repeated.
