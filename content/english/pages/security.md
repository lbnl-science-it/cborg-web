---
title: "Secure Coding Practices"
# meta title
meta_title: ""
# meta description
description: "Security guidance for software developers and AI-assisted coding workflows: fundamentals, practical checklist, and agentic automation."
# save as draft
draft: false
---

Use these pages in order. They are written for novices and experienced developers:

1. **[Security basics](/security_basics)** &mdash; core concepts, the four common failure modes (bugs, secret leaks, vulnerable dependencies, supply-chain attacks), and why install time is itself a code-execution boundary.
2. **[Security checklist for daily development](/security_practical)** &mdash; concrete tools and controls you can adopt today: lock files, secret scanning, dependency and static analysis, CI hardening, container and notebook hygiene, and a response workflow.
3. **[AI-assisted coding and agentic security review](/security_ai_agentic)** &mdash; how to apply the same security bar to generated code, handle prompt injection and untrusted tool output, and wire an auto-loaded security-review skill into your coding agent.

> **Tip:** If you only have 30 minutes, read the checklist page and implement the first three controls: locked dependencies, secret scanning, and dependency scanning (SCA) in CI.

> **Tip:** If you use an AI coding assistant, read at least the first section of the AI page (*Security rules for AI-generated code*) before your next commit.

> **Tip:** Read this information even if you are not intending to publish your code. There are still security risks in just running, or even building, your code &mdash; including notebooks, model weights, and dependency installs.

---------------

Questions? Email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or reach out in the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7).
