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

For Mac users with Homebrew

{{< highlight bash >}}
brew install gemini-cli
{{< /highlight >}}

Using NPM

{{< highlight bash >}}
npm install -g @google/gemini-cli
{{< /highlight >}} 

#### 2. Authentication via CBorg: Set the following variables in your environment:

**If you previously authenticated using another method, switch authentication back to "Gemini API Key" using the `/auth` command.

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

