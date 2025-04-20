---
title: "Frequently Asked Questions"
# meta title
meta_title: ""
# meta description
description: "Common questions regarding the CBorg AI Portal and CBorg Chat"
# save as draft
draft: false
---

{{< notice "note" >}}
Got a question? Email us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or join the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7)
{{< / notice >}}

#### Where is the CBorg Portal hosted?

The CBorg Chat user-interface, chat history database, and LBL-hosted models are all located on servers running in the IT Division's data center in Building 50. If you use commercial models (ChatGPT, Google Gemini or Anthropic Claude), these models are running in commercial cloud infrastructure which is external to the LBL network.

#### What GPUs are the LBL-hosted models running on?

We use a small cluster containing an Nvidia DGX 8-way H100 node, in addition to 4-way A100, A40 and AMD MI100 GPUs nodes. Models are allocated to GPU resources to accomodate anticipated workloads.

#### How to copy/paste from CBorg Chat to/from Google Docs and preverse formatting?

LLMs use Markdown to format text such as headings, bold, italics and for LaTeX equation typesetting. In addition to improving document readability, these formatting details improve the LLM's ability to parse the structure of text. 

By default, Google Docs ignores Markdown formatting is OFF. It can be enabled in Google Docs by going to **Tools > Preferences > Enable Markdown**.

After enabling, the “Copy as Markdown” and “Paste from “Markdown” options will appear in the Edit menu.

For Microsoft Word, it is currently necessary (Oct 2024) to install a plugin to enable copy and paste with Markdown formatting.

#### Can I export chat from ChatGPT and import them to CBorg Chat?*

Yes, follow these instructions: [JSON Export/Import Conversations](https://www.librechat.ai/docs/user_guides/import_convo)

#### Where does my CBorg Chat data get stored?

*CBorg Chat*: Chat history (the transcript of messages between you and the AI) is saved in a database within the IT Division's LBL-hosted systems.

*CBorg API*: Chat history is not saved, but in some cases chat content may appear in log transcripts visible to IT Division staff.

#### Can I use CBorg Chat with PII or CUI data?

No, this system is not designed to accept PII or CUI data.

#### Can I upload a PDF, text or CSV file to CBorg Chat?

Some models on CBorg Chat provide vision support and accepts image file attachments. They can
describe images and extract text from images (OCR), e.g. "Describe what is in this picture" or "Transcribe this picture". 

PDF documents and text files can also be uploaded and added to the chat context using the RAG method.

#### What are the legal issues associated with using generative AI in my work?*

- Use of your data: All endpoints available through CBorg are enterprise-grade endpoints where cloud providers have promised to not utilize your chat data for training of future models. The same guarantee may not hold for other services, especially any "free" versions of AI-assisted chat.

- Copyright and Attribution: Generally, if you are substantially "guiding" the LLM toward its output, then there should be minimal risk of copyright misattribution. However, if the LLM substantially generates its output in an automated manner this work may not be copyrightable.

- Synthetic Data and Distillation: Some models do not permit use of the model to generate synthetic training data for further models. Users are responsible for complying with the [terms of use of each model](/models).

- Legal Issues, Copyright Issues, Authorship Misattribution: Cyber Security has published a document providing [Guidance on using Generative AI Tools](https://commons.lbl.gov/display/cpp/Guidance+on+using+Generative+AI+tools). LBNL Staff should familiarize themselves with the issues described and contact IT Policy for any further questions.

For further guidance on legal issues related to AI please consult the [LBL IT Policy](mailto:itpolicy@lbl.gov)

#### **Comparing LBL-Hosted versus Commercial Models?**

##### Why use LBNL-Hosted Models?

**Pros:** 

- Your data is retained within Berkeley Lab systems and networks
- Free to use for building large scale LLM-powered applications
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

#### **Why pick model A or B (model selection)?**

- **Commercial cloud models provide the best quality**: Commercial cloud models run on large compute clusters with memory and bandwidth far exceeding what is possible with self-hosted models. If you need the highest quality output, an advanced commercial cloud-hosted model will be the best choice provided that it is compatible with any IP or privacy restrictions associated with your content.
- **Nuanced reasoning, scientific research, coding, technical writing**: Use an advanced model, typically from the commercial cloud providers if self-hosted alternatives are not sufficient.
- **Document summarization, document cleaning, translation & transcription**: Use a lower-cost model or Lab-hosted model to reduce cost, as advanced reasoning is not required.
- **Image Analysis (vision)**: ChatGPT 4, Google Gemini and Anthropic Claude all support vision. Attach your image and then ask questions.
- **Large-scale automated document processing**: Use a Lab-Hosted model which are free to use, saving costs when processing thousands to millions of documents. Batch processing can also reduce costs, typically by 50% for results returned within 24 hours.

#### **How do LBNL-Hosted Models compare to Self-Hosted Options?**

LBNL-Hosted models are served using the vLLM engine, which is capable of efficiently serving a large number of simultaneous users. We use multi-way GPU systems that improve the speed and amount of memory available to the model (e.g. 320GB or more of GPU RAM) compared to what is possible on consumer-grade laptop and desktop computers. In addition, our models are evaluated in FP16 precision, which increases the accuracy and quality of outputs compared to quantized models that have been compressed to fit into small-memory devices.

#### **Can I host my own model on IT Division infrastructure?**

Please reach out to us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) to discuss hosting of your own models or other LLM-powered applications.

#### **How can I improve the results in complex tasks?**

When asking LLMs to perform complex analytical tasks such as code generation and text summarization it can be helpful to reduce the "Temperature" parameter to zero.

When the temperature is non-zero (default is 1.0) the output from the LLM will vary as it randomly selects between possible outputs.
By setting the temperature to zero, the LLM will always output the maximum likelihood answer (i.e., the best quality answer), and will 
behave in a deterministic fashion producing repeatable outputs.

In CBorg Chat, you can adjust the model temperature by creating a user preset and then activating the preset.

#### **Does uploading a large document increase costs?**

Documents uploaded through the file upload do not cause the entire document to be processed by the AI. Rather, the document is broken up into small chunks which are indexed into a database and then retreived to augment the context of the generative AI when it is deemed relevant to the user's input. Therefore, large documents (e.g. thousands of pages) can be uploaded without incurring a high per-token cost.

#### **Are these services expensive?**

Providing generative AI services to the Lab through Cborg is very affordable, and less expensive than the cost of each user acquiring an individual subscription.

In addition, cost control guardrails have been put into place to prevent the service from exceeding our expected budget.

#### **How can I optimize the cost of using generative AI?**

**In CBorg Chat**

- **Reduce Unnecessary Context:** When chatting with the AI, do not switch topics mid-conversation. Instead, start a new chat session. This will improve the quality of responses from the AI and reduce costs (see explanation below).
- **Test Model Alternatives:** Test your prompts using "side-by-side" comparison mode (click the (+) icon at the top of the screen. Sometimes a lower cost model can provide substantially equivalent results.
- **Try Chain-of-Thought instead of Reasoning**: Advanced "reasoning" models such as OpenAI o1 Preview are very expensive. In some cases, similar performances can be obtained by adding "chain-of-thought" prompts to a standard completion model. e.g., try asking the LLM to think through its answer step by step before providing the final result. 
- **Use LBL-Hosted Models:** Models starting with "CBorg" (Chat, Coder, etc) are hosted on hardware owned by Berkeley Lab and have no per-token cost overhead.

**Explanation:** Generative AI APIs are stateless and do not have any memory of your prior interactions. Instead, they rely on the client to re-transmit the entire chat history on every API call. As the chat history gets grows, the cost of each interaction increases approximately linearly as the number of input tokens increases. Therefore, starting a new chat session (or 'thread') will reset the baseline cost to zero.

**For API Users and Bulk Processing**

- **Try a Lightweight Model:** Switch to a "lightweight" model such as Google Gemini Flash, Anthropic Claude Haiku, ChatGPT 4o Mini or OpenAI o1 Mini. Lightweight models can deliver similar performance on summarization and extraction tasks with cost savings up to 90%. Flagship models are still needed if your application requires extensive internet-scale background knowledge to operate correctly.
- **Use a LBL-hosted Model:** Use LBL-hosted models (model name starting with "lbl/", such as lbl/llama). These models run on hardware owned by Berkeley Lab and have no per-token costs to use.
- **Use Batch Inference:** If your application does not require real-time response, batch processing can save up to 90% of costs. Results of bulk processing are typically returned within 24 hours.
- **Get your own project:** For AWS or Google Users, you can access many of the models on CBorg through your own AWS Cloud or GCP Cloud account, attached to your PID. This will let you controls the costs directly and take advantage of negotiated discounts between DOE and cloud providers. Email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) to get setup with a cloud account.


