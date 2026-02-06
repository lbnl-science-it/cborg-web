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

#### Top Recommended Tools

- **[VS Code with RooCode](/tools_roo)**: Works well with CBorg API - powerful agentic features and easy to switch between models to control costs.
- **[OpenCode CLI](/tools_opencode)**: An open-source CLI "agentic" tool that works with many CBorg models.
- **[Claude Code](/tools_claudecode)**: Works with Claude models (best) and other models through CBorg.
- **[Codex CLI](/tools_codex)**: Recommended to use with gpt-5.2-codex or gpt-5.1-codex-mini.
- **[Gemini CLI](/tools_geminicli)**: Excellent overall, but also very expensive to use when Gemini Pro is enabled. Recommended to reserve this model for use with high-complexity tasks.

#### Unsupported Tools:

- **Continue**: Works with CBorg but documentation is no longer maintained due to low usage.
- **Antigravity**: Does not work with CBorg and not available for Google Workspace Enterprise yet.
- **Codex App**: Does not work with CBorg - works with ChatGPT Enterprise.
- **Cursor**: You need a subscription from Cursor for best results, which is not available from CBorg
- **Github Copilot**: Not supported by CBorg - you need a subscription from GitHub to use it

#### Limitations of AI Coders:

- **Knowledge Cutoff Date**: Models are trained on a corpus of data that is typically 6-12 months old and cannot generate code for features or APIs newer than the model's cutoff date.
- **Poor performance in scientific coding**: Coding models are currently weak in most scientific and numerical programming tasks (see [SciCode](/bench_scicode) benchmark results)
- **Poor performance on new, obscure or unstable APIs**: Models make mistakes and can hallucinate when generating code for APIs that are obscure, due to lack of sufficient examples in their training data. Due to knowledge cut-off dates, models will be unaware of recent changes to APIs newer than 6-12 months ago. Unstable APIs with multiple incompatible versions may result in broken code generation. Consider augmenting your coder's knowledge with access to the API documentation, e.g. using the Context7 MCP tool.
- **Context Length Limit**: Models can only ingest a finite amount of code at inference time, limiting its total field of view in large codebases. Use of indexing (vector search) can help, but is not guaranteed to ensure the coding agent is aware of all relevant code to a prompt. Models can only generate a finite and usually relatively small amount of output code in each turn, limiting its ability to rewrite large sections of code. Use of 'diff' for edits can enable working with large files, but comes with issues of impect diff matching causing errors.
- **Context Rot**: Models are easily overwhelmed when presented with multiple instructions in a prompt, and randomly "forget" to follow instructions particularly when the context length becomes long. Keep prompts as simple as possible and do not attempt to perform multiple tasks in a single prompt.
- **Poor adherence to DRY principles**: LLM-generated code tends to have a lower "information density" due to excessive repetition and underutilization of abstractions, leading to code that is less efficient to execute and more difficult to maintain.
- **Bias toward on Legacy Solutions**: LLMs tend to over-use legacy code libraries because there is more documentation for these in the training data, causing underutilization of newer and better alternatives. Recommended mitigation: ask for alternatives when selecting a tech stack.
- **Low Quality of Tab-Completion**: "Fill-in-the-middle" models which are used for tab-style autocomplete rely on extremely small models, which have very low performance on complex coding tasks. Large models cannot be used for tab completion because of high latency.
- **Potential Data Loss**: AI coding tools can perform unexpected actions such as deleting code, corrupting files, breaking code or even deleting files. Always use a version control system and maintain backups of your code base to guard against potential data loss.


### Model Selection for Coding

_Last updated: 2026-02-05_

**Recommended Choices**

| Model                          | Cost | Comments                                                          |
| -----------------              | ---- | ----------------------------------------------------------------- |
| `lbl/cborg-coder`              | Free | OK performance. Unlimited usage - free.                        |
| `claude-opus-latest`           | $$$  | Good for advanced coding. Better than claude-sonnet-high. |
| `gpt-5.2-codex`                | $$   | Solid performer and reasonable cost |
| `gemini-3-flash-high`          | $$   | Slightly slower but is Pareto-optimal for cost-quality performance |
| `gemini-3-flash`               | $    | Best low-cost model. Pareto-optimal for cost-quality performance |

---------

### Models for Advanced Technical Writing

Recommended Best Practices: 

- **Style Emulation**: Using a custom system prompt, provide a large corpus of sample writing and ask the model to emulate the style and language. This is more effective for maintaining style than using general descriptions of writing style.
- **Complex Document Formation**: Use multiple prompts to construct the document one paragraph or one section at a time. This is more scalable and will maintain accuracy and tone throughout.

Best models: `gemini-flash-high`, `gemini-pro`, `claude-opus-latest`, `gpt-5.2-high`

---------

### Models for Data Extraction / Summarization

Recommended Best Practices: 
- Try using free models (gpt-oss-120b-high) before scaling up with paid models
- Do not overload model instructions by asking too many questions at once - context rot will cause poor performance. 
- Add line numbers to your data, then ask AI to include line number references in extraction, so you can debug/trace where it found information.
- Structure prompts with all bulk data and static content first, then dynamic data/questions at the end. This will leverage implicit prompt caching and result in faster inference time and lower cost on endpoints with implicit prompt caching (all openai/ models)

### Models for Data Extraction

_Last updated: 2026-02-05_

**Recommended Selections**

| Model                          | Cost | Speed  | Comments                                                           |
| -----------------              | -- | ---- | ----------------------------------------------------------------- |
| `lbl/cborg-deepthought`        | Free | Medium | Uses gpt-oss-120b-high |
| `lbl/cborg-vision`              | Free | Medium | Uses llama-4-scout |
| `lbl/cborg-ocr`                | Free | Medium | Full-page to markdown text using Nanonets-OCR  |
| `gemini-3-flash   `            | $   | Medium   | Excellent performance at low cost          |

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
