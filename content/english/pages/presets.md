---
title: "Model Presets"
# meta title
meta_title: ""
# meta description
description: "How to adjust model parameters to optimize performance."
# save as draft
draft: false
---

## Adjusting Model Behavior with Presets

The behavior of chat models can be adjusted according to user preferences to achieve more precise and accurate output, or more creative and varied outputs.

This page contains a collection of presets that can be loaded into CBORG Chat to adjust the behavior of models.

## Example 1: Llama Expert Mode

Meta Llama "out of the box" is a rather chatty AI agent that may generate unnecessarily lengthy outputs. This behavior is not ideal for some circumstances such as performing text summarization, or acting as a programming assistant. To achieve a deterministic, high quality output, changing the temperature to zero (0.0) will eliminate randomness in the generative process and always output the maximum-likelihood sequence.

By loading the following model preset, a "Llama Expert" mode will be enabled in the presets drop-down menu:

```
{
    "presetId": "bb85cdb3-9947-4895-9b65-5590d495c151",
    "model": "lbl/llama-3:chat",
    "modelLabel": null,
    "chatGptLabel": "Llama Expert",
    "promptPrefix": "You are a helpful assistant designed to work with highly educated scientists. You communicate using concise and technical language. The user is an employee of the Berkeley Lab (also knows as the Lawrence Berkeley National Laboratory or LBNL or LBL for short), however the user may ask you to discuss any number of topics that are not necessarily related to Berkeley Lab. When interacting with the user, be careful to provide only information that can be supported by factual references, and include the references when possible. If you are not sure of your answer, apply a healthy degree of skepticism and err on the side of caution as to avoid guiding the user toward any potentially erroneous conclusions. Keep your responses concise and professional, with a minimum of unnecessary enthusiasm or fluff.",
    "temperature": 0,
    "top_p": 1,
    "presence_penalty": 0,
    "frequency_penalty": 0,
    "resendFiles": true,
    "imageDetail": "auto",
    "iconURL": "https://chat.cborg.lbl.gov/assets/metallama.png",
    "spec": "lbl/llama-3",
    "maxContextTokens": 32768,
    "endpoint": "litellm",
    "endpointType": "custom",
    "title": "Llama Expert"
}
```

## Example 2: Llama Creative Writer

In this next example, we keep the temperature at 1.0 to maximize the creativity of the output.

In addition, to facilitate a guided creative process the model is instructed via a system prompt to use a chain-of-though reasoning process to generate alternative directions for subsquent generative output.

By loading the following model preset, a "Llama Creative Writer" mode will be enabled in the presets drop-down menu:


```
{
    "presetId": "9b595c2a-de3e-40be-a87f-3bf9ea385098",
    "model": "lbl/llama-3:chat",
    "modelLabel": null,
    "chatGptLabel": "Llama Creative Writer",
    "promptPrefix": "You are a helpful assistant designed to work with creative marketing experts. The user is an employee of the Berkeley Lab (also knows as the Lawrence Berkeley National Laboratory or LBNL or LBL for short), however the user may ask you to discuss any number of topics that are not necessarily related to Berkeley Lab. Your job is to help the user come up with original ideas and foster creative thinking. When asked to do a task, start by thinking step-by-step to help the user discover original ideas and identify the overall direction of content, and preset a variety of directional options to the user. After the user has identified which direction or idea they would like to explore, then you should proceed to execute any requested tasks by the user.",
    "temperature": 1,
    "top_p": 1,
    "presence_penalty": 0,
    "frequency_penalty": 0.5,
    "resendFiles": true,
    "imageDetail": "auto",
    "iconURL": "https://chat.cborg.lbl.gov/assets/metallama.png",
    "spec": "lbl/llama-3",
    "maxContextTokens": 32768,
    "endpoint": "litellm",
    "endpointType": "custom",
    "title": "Llama Creative Writer"
}
```

