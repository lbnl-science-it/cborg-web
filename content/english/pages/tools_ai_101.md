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

- **VS Code with RooCode**: Works well with CBorg API - powerful agentic features.
- **VS Code with Continue**: Works well for more targeted code edits (insertion, line editing).
- **Claude Code**: Excellent overall. Efficient with token use. Can integrate with VS Code to show diffs

You may also get good results with other tools - if you do, please let us know about it!

#### Unsupported Tools:

- **Cursor**: You need a subscription from Cursor for best results, which is not available from CBorg
- **Github Copilot**: Not supported by CBorg - you need a subscription from GitHub to use it

### Model Selection for Coding

| Model                          | Cost | Speed  | Comments                                                           |
| -----------------            | -- | ---- | ----------------------------------------------------------------- |
| `lbl/cborg-coder`              | Free | Medium | Unlimited usage. |
| `anthropic/claude-haiku`       | $    | Fast   | Suggested use: adding documentation, simple tasks.                 |
| `anthropic/claude-sonnet`      | $$   | Fast   | Strong performance for every day use. Supports computer use. |
| `anthropic/claude-sonnet-high` | $$$  | Medium | Better every day, but watch cost |
| `anthropic/claude-opus`        | $$$  | Slow   | Very expensive with marginal benefit over Sonnet                   |
| `anthropic/claude-opus-high`   | $$$$ | Slow   | Challenging tasks where other models fail |
| `openai/o4-mini-high`          | $$   | Medium | Excellent performance at a very low cost. |
| `openai/o3-high`               | $$$  | Slow   | For challenging tasks (refactoring, math, etc). |
| `google/gemini-pro`            | $$$  | Medium | Solid performance, moderate cost. |
| `google/gemini-pro-high`       | $$$$ | Slow   | For challenging tasks |

#### TLDR - Which model to use?

- `lbl/cborg-coder`: Never need to worry about budget.
- `openai/o4-mini-high`: Best performance-to-cost ratio, strong performer. Best daily for heavy use, but can be a bit slow.
- `anthropic/claude-sonnet-high`: Best daily driver for moderate use - will eat up budget quickly.
- `openai/o3-high`: Use for the most challenging reasoning tasks (math, refactoring, etc)
- `google/gemini-pro-high`: Alternative for challenging reasoning tasks

---------

### Models for Technical Writing

Recommended Best Practices: 

- **Style Emulation**: Using a custom system prompt, provide a large corpus of sample writing and ask the model to emulate the style and language. This is more effective for maintaining style than using general descriptions of writing style.
- **Complex Document Formation**: Use multiple prompts to construct the document one paragraph or one section at a time. This is more scalable and will maintain accuracy and tone throughout.

Best models: `anthropic/claude-opus-high` and `openai/o3-high`.

---------

### Models for Data Extraction / Summarization

Recommended Best Practice: 
- Use a small / lightweight model and extract data one piece at a time. 
- Use chain of thought prompting to enhance accuracy.
- Structure prompts with data first, then question, to leverage prompt caching.
- Extract a small amount of information in each iteration for best results

### Models for Data Extraction

| Model                          | Cost | Speed  | Comments                                                           |
| -----------------              | -- | ---- | ----------------------------------------------------------------- |
| `lbl/cborg-chat`               | Free | Medium | Unlimited usage |
| `anthropic/claude-haiku`       | $$   | Fast   | More expensive than other lightweight models                 |
| `anthropic/gemini-flash`       | $    | Fast   | Strong performance, low cost |
| `anthropic/gemini-flash-lite`  | $    | Very Fast | Low latency applications |
| `openai/gpt-4.1-mini`          | $$   | Fast   | Good performance, supports implicit prompt caching |
| `openai/gpt-4.1-nano`          | $    | Very Fast | Low latency |

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


