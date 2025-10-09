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

#### 2A. Authentication via LBL-identity:

Authentication via the LBL identity enables direct usage of Gemini models without incurring API charges on CBorg.

{{< highlight bash >}}
gemini
/auth
{{< /highlight >}}

Then select "Login with Google". A browser will open - login using your LBL identity for authentication.

Verify the Auth method is "OAuth" using the `/about` command:

{{< highlight bash >}}
╭────────────╮
│  > /about  │
╰────────────╯
╭──────────────────────────────────────────────────────────────────────╮
│                                                                      │
│ About Gemini CLI                                                     │
│                                                                      │
│ CLI Version             0.1.9                                        │
│ Git Commit              34935d6                                      │
│ Model                   gemini-2.5-pro                               │
│ Sandbox                 no sandbox                                   │
│ OS                      darwin                                       │
│ Auth Method             OAuth                                        │
│                                                                      │
╰──────────────────────────────────────────────────────────────────────╯
{{< /highlight >}}


#### 2B. Authentication via CBorg: Set the following variables in your environment:

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

