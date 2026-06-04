# Agent Instructions

## General Guidelines

### Confirming the Current Date

When adding entries to the news page (`content/english/pages/news.md`) or any other date-stamped content, **always run the `date` command first** to confirm the actual current date before writing it into the file:

```bash
date
```

Do not assume or guess the date. Use the output of this command to ensure the date in the news entry is accurate.

## Auto-Generated Files

### models.md

`content/english/pages/models.md` is **auto-generated** by the script `cborg-etc/bin/generate_models_page.py`, which runs on `cborg.it.lbl.gov` and writes the file directly from the live LiteLLM API.

**Do not edit `models.md` directly.** Any manual changes will be overwritten the next time the generator script runs. To rebuild the models page, follow the instructions in the root `AGENTS.md` under "Rebuilding the Models page".
