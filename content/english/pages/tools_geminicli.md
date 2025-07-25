---
title: "Gemini CLI with CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### 1. Install Gemini CLI

Using NPM

{{< highlight bash >}}
npm install -g @google/gemini-cli
{{< /highlight >}} 

For Mac users with Homebrew

{{< highlight bash >}}
brew install gemini
{{< /highlight >}}

#### 2. Set the following variables in your environment:

{{< highlight bash >}}
export GEMINI_API_KEY=$CBORG_API_KEY
export GOOGLE_GEMINI_BASE_URL="https://api.cborg.lbl.gov"
{{< /highlight >}}

#### 3. Restart your shell and verify that the environment variables are now present.

{{< highlight bash >}}
env | grep GEMINI 
{{< /highlight >}}

#### 4. Now start Gemini CLI in your project directory

{{< highlight bash >}}
cd my-project
gemini
{{< /highlight >}}

**Note:** Gemini CLI only works with Gemini models (Current default Gemini 2.5 Pro / Gemini 2.5 Flash)

**Note:** It is strongly recommended to use version control (e.g. Git) with Gemini CLI projects.

**Budget Issues:** Heavy use of Gemini CLI may exhaust your API usage credits. Direct access to Gemini models can be configured via a GCP cloud project. To get started, please contact [Science IT Consulting](scienceit@lbl.gov) with a PID to use for recharges and we will help you get setup with a dedicated GCP cloud project.

