---
title: "Frequently Asked Questions"
# meta title
meta_title: ""
# meta description
description: "Common questions regarding the CBORG AI Portal and CBORG Chat"
# save as draft
draft: false
---

#### 1. Where is the CBORG Portal hosted?

The CBORG Chat user-interface, chat history database, and LBL-hosted models are all located on servers running in the IT Division's data center in Building 50. If you use commercial models (ChatGPT, Google Gemini or Anthropic Claude), these models are running in commercial cloud infrastructure which is external to the LBL network.

#### 2. What GPUs are the LBL-hosted models running on?

We use a small cluster containing an Nvidia DGX 8-way H100 node, in addition to 4-way A100, A40 and AMD MI100 GPUs nodes. Models are allocated to GPU resources to accomodate anticipated workloads.

#### 3. Can I export chat from ChatGPT and import them to CBORG Chat?*

Yes, follow these instructions: [JSON Export/Import Conversations](https://www.librechat.ai/docs/user_guides/import_convo)

#### 4. Where does my CBORG Chat data get stored?

*CBORG Chat*: Chat history (the transcript of messages between you and the AI) is saved in a database within the IT Division's LBL-hosted systems.

*CBORG API*: Chat history is not saved, but in some cases chat content may appear in log transcripts visible to IT Division staff.

#### 5. Can I use CBORG Chat with PII or CUI data?

No, this system is not designed to accept PII or CUI data.

#### 6. Can I upload a PDF, text or CSV file to CBORG Chat?

No, currently the CBORG Chat only accepts image files for vision models, e.g. "Describe what is in this picture". Support for chatting with PDF documents and other file types is on our roadmap but currently is not enabled.

#### 7. What are the legal issues associated with using generative AI in my work?*

- Commercial Use: Some open-source (LBL-hosted) models are not permitted for commercial use. All models provided allow for research use.
- Synthetic Data: Some models do not permit use of the model to generate synthetic training data for further models. Users are responsible for complying with the [terms of use of each model](/models).

- Legal Issues, Copyright Issues, Authorship Misattribution: Cyber Security has published a document providing [Guidance on using Generative AI Tools](https://commons.lbl.gov/display/cpp/Guidance+on+using+Generative+AI+tools). LBNL Staff should familiarize themselves with the issues described herein.

For further guidance on legal issues please consult the [LBL Intellectual Property Office](https://ipo.lbl.gov)

#### 8. **Why use LBNL-Hosted versus Commercial Models?**

##### Why use LBNL-Hosted Models?

**Pros:** 

- Your data is retained within Berkeley Lab systems and networks
- Free to use for building large scale LLM-powered applications
- "Uncensored" models available without guardrail restrictions
- Supports open research

**Cons:**

- May be slower to generate responses
- May be occasionally offline during data center maintenance

##### Why use Commercial Cloud-hosted models?

**Pros:**

- Highest quality of reasoning, nuanced outputs
- Typically faster to generate
- High-availability and scalability
- Best multi-modal capabilities (speech, vision, document OCR and handwriting recognition)

**Cons:**

- High cost in large-scale document processing use cases
- Inputs and outputs may be subject to human review for provider policy violations

#### 9. **Why pick model A or B (model selection)?**

- **Commercial cloud models provide the best quality**: Commercial cloud models run on large compute clusters with memory and bandwidth far exceeding what is possible with self-hosted models. If you need the highest quality output, an advanced commercial cloud-hosted model will be the best choice provided that it is compatible with any IP or privacy restrictions associated with your content.
- **Nuanced reasoning, scientific research, coding, technical writing**: Use an advanced model, typically from the commercial cloud providers if self-hosted alternatives are not sufficient.
- **Document summarization, document cleaning, translation & transcription**: Use a lower-cost model or Lab-hosted model to reduce cost, as advanced reasoning is not required.
- **Image Analysis (vision)**: ChatGPT 4, Google Gemini and Anthropic Claude all support vision. Attach your image and then ask questions.
- **Large-scale automated document processing**: Use a Lab-Hosted model which are free to use, saving costs when processing thousands to millions of documents. Batch processing can also reduce costs, typically by 50% for results returned within 24 hours.

#### 10. **How do LBNL-Hosted Models compare to Self-Hosted Options?**

LBNL-Hosted models are served using the vLLM engine, which is capable of efficiently serving a large number of simultaneous users. We use multi-way GPU systems that improve the speed and amount of memory available to the model (e.g. 320GB or more of GPU RAM) compared to what is possible on consumer-grade laptop and desktop computers. In addition, our models are evaluated in FP16 precision, which increases the accuracy and quality of outputs compared to quantized models that have been compressed to fit into small-memory devices.

#### 11. **Can I host my own model on IT Division infrastructure?**

Please reach out to us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) to discuss hosting of your own models or other LLM-powered applications.

#### 12. **How can I improve the results in complex tasks?**

When asking LLMs to perform complex analytical tasks such as code generation and text summarization it can be helpful to reduce the "Temperature" parameter to zero.

When the temperature is non-zero (default is 1.0) the output from the LLM will vary as it randomly selects between possible outputs.
By setting the temperature to zero, the LLM will always output the maximum likelihood answer (i.e., the best quality answer), and will 
behave in a deterministic fashion producing repeatable outputs.

In CBORG Chat, you can adjust the model temperature by creating a user preset and then activating the preset.

