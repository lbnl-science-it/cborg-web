---
title: "LBL-Omni-Engineer for CBorg"
# meta title
meta_title: ""
# meta description
#description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---

#### LBL Omni-Engineer

CLI-based coding assistant capable of editing files in-place using simple commands. 

Best results with Claude Sonnet, but you can also use the on-prem CBorg Deepthought and CBorg Coder models.

{{< button "Omni Engineer-LBL GitHub Project (LBL Forked Version)" "https://github.com/lbnl-science-it/omni-engineer-lbl/tree/utilities" >}}

Make sure to check out the 'utilities' branch, not "main".

{{< highlight bash >}}
git checkout utilities
pip install -r requirements.txt
python ./main.py
{{< /highlight >}}

CBORG_API_KEY environment variable must be defined before launching the tool. 


