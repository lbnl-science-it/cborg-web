---
title: "Handling PII and Sensitive Data with LLMs"
# meta title
meta_title: ""
# meta description
description: "Guidance on processing data that may contain personally identifiable information (PII) when using LLMs, including privacy filter models and sanitization software."
# save as draft
draft: false
---

> **Disclaimer:** Users are responsible for verifying that their privacy filter or sanitization setup correctly removes all sensitive data before transmitting it to any external service or LLM. The approaches described here are general guidance only. You must test and validate your specific pipeline against your data and applicable privacy requirements (e.g., LBNL data classification policy, HIPAA, GDPR) before using it in production.

#### Contents

- [Why this matters](#why-this-matters)
- [The core approach: sanitize before you send](#the-core-approach-sanitize-before-you-send)
- [Option 1: Privacy filter models](#option-1-privacy-filter-models)
- [Option 2: NLP-based Python libraries](#option-2-nlp-based-python-libraries)
- [Handling re-identification: placeholder mapping](#handling-re-identification-placeholder-mapping)
- [Choosing an approach](#choosing-an-approach)
- [Validation and testing](#validation-and-testing)

---------------

## Why this matters

Personally identifiable information (PII) includes names, email addresses, postal addresses, phone numbers, dates of birth, government ID numbers, and any other data that can be used to identify a specific individual. Sending PII to a cloud-hosted LLM may violate LBNL data handling policies, applicable regulations, or the privacy expectations of the individuals whose data you hold.

Even when using CBorg's on-premises API gateway, you should understand what data leaves your local environment and apply appropriate controls.

## The core approach: sanitize before you send

The standard pattern for using LLMs with potentially sensitive data is:

1. **Detect** PII entities in your text (names, addresses, emails, phone numbers, etc.).
2. **Redact or replace** each entity with a neutral placeholder (e.g., `[PERSON]`, `[EMAIL]`, `[ADDRESS]`).
3. **Send** the sanitized text to the LLM.
4. **Optionally re-map** placeholders back to real values in the LLM's response if needed.

Redaction is the safest option: once data is sanitized you can use it with any model without further concern about that data leaving your environment.

## Option 1: Privacy filter models

Small, locally-runnable language models can detect and mask PII with high accuracy. Because they run on your own hardware, the original data never leaves your machine.

**OpenAI Privacy Filter** ([huggingface.co/openai/privacy-filter](https://huggingface.co/openai/privacy-filter)) is one example. It replaces detected entities with tokens such as `[PRIVATE PERSON]`, `[PRIVATE LOCATION]`, and `[PRIVATE EMAIL]`.

Example workflow using the Hugging Face `transformers` library:

```python
from transformers import pipeline

pii_filter = pipeline("token-classification", model="openai/privacy-filter", aggregation_strategy="simple")

raw_text = "Please contact Jane Smith at jane.smith@example.com or 123 Main St, Berkeley, CA."

entities = pii_filter(raw_text)

# Build redacted string
redacted = raw_text
for ent in reversed(entities):  # reverse to preserve offsets
    redacted = redacted[: ent["start"]] + f"[{ent['entity_group']}]" + redacted[ent["end"] :]

print(redacted)
# e.g. "Please contact [PRIVATE PERSON] at [PRIVATE EMAIL] or [PRIVATE LOCATION]."
```

The redacted string is then safe to pass to your LLM prompt.

> **Note:** Privacy filter models require a compatible Python environment and sufficient local compute. A GPU is not strictly required for inference on short documents, but will significantly improve throughput for large batches.

## Option 2: NLP-based Python libraries

If you cannot run a local model, several Python libraries use classical NLP (named-entity recognition, regex, and rule-based matching) to detect and redact PII. These do not require a GPU and are generally faster to set up, but may miss edge cases that a fine-tuned model would catch.

Common options include:

| Library | Notes |
|---|---|
| **[presidio-analyzer](https://microsoft.github.io/presidio/)** (Microsoft Presidio) | Modular, supports custom recognizers, integrates with spaCy NER |
| **[scrubadub](https://scrubadub.readthedocs.io/)** | Simple API, pluggable detectors |
| **[spaCy](https://spacy.io/) + custom rules** | Flexible but requires more configuration |

Example using Microsoft Presidio:

```python
from presidio_analyzer import AnalyzerEngine
from presidio_anonymizer import AnonymizerEngine

analyzer = AnalyzerEngine()
anonymizer = AnonymizerEngine()

raw_text = "Please contact Jane Smith at jane.smith@example.com or 123 Main St, Berkeley, CA."

results = analyzer.analyze(text=raw_text, language="en")
redacted = anonymizer.anonymize(text=raw_text, analyzer_results=results)

print(redacted.text)
# e.g. "Please contact <PERSON> at <EMAIL_ADDRESS> or <LOCATION>."
```

> **Note:** Rule-based and NLP approaches are not as robust as fine-tuned privacy filter models. You must test them against representative samples of your actual data to confirm they meet your requirements.

## Handling re-identification: placeholder mapping

In some workflows you need to correlate the LLM's output back to specific individuals — for example, if the LLM is summarizing records and you need to attach the summary to the correct person. In that case, maintain a local mapping from each unique entity to a stable placeholder ID:

```python
import uuid

entity_map = {}  # maps original value -> placeholder

def replace_with_id(value, entity_type):
    if value not in entity_map:
        entity_map[value] = f"[{entity_type}_{uuid.uuid4().hex[:8].upper()}]"
    return entity_map[value]

# After LLM response, reverse the map to restore original values
reverse_map = {v: k for k, v in entity_map.items()}

def restore(text):
    for placeholder, original in reverse_map.items():
        text = text.replace(placeholder, original)
    return text
```

Keep the mapping table in memory only (or in a secure local store) and never transmit it to the LLM.

## Choosing an approach

| Situation | Recommended approach |
|---|---|
| High-sensitivity data, GPU available | Privacy filter model (e.g., `openai/privacy-filter`) |
| High-sensitivity data, CPU only | Presidio with spaCy NER + regex recognizers |
| Low-sensitivity data, quick prototype | `scrubadub` or simple regex for known patterns |
| Need to re-identify after LLM response | Any of the above + placeholder mapping table |

When in doubt, use the most conservative option and validate thoroughly before processing real data.

## Validation and testing

Regardless of which approach you choose, you must validate it before using it in production:

1. **Build a labeled test set** — collect representative samples of your data and manually annotate all PII entities.
2. **Measure recall** — confirm that the filter catches all annotated entities. A missed entity is a data leak.
3. **Measure precision** — confirm that non-PII text is not over-redacted to the point of making the data useless.
4. **Test edge cases** — unusual name formats, non-English text, abbreviations, and domain-specific identifiers (e.g., proposal IDs that happen to look like phone numbers).
5. **Re-validate after updates** — if you update the model or library version, re-run your test suite.

> **Reminder:** You are responsible for ensuring your pipeline meets applicable data handling requirements. If you are unsure whether your data is subject to specific regulations or LBNL policies, contact the [LBNL Privacy Office](mailto:privacy@lbl.gov) or [Science IT](mailto:scienceit@lbl.gov) before proceeding.

---------------

Questions? Email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or reach out in the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7).
