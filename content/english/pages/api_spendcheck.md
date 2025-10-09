---
title: "API Key Spend Check"
# meta title
meta_title: ""
# meta description
description: ""
# save as draft
draft: false
---

### Checking your spend on the CBorg API Key Manager

Visit [https://api.cborg.lbl.gov/key/manage](https://api.cborg.lbl.gov/key/manage) to view your current API key status, spend and budget reset date.

{{< button "Continue to CBorg API Key Manager" "https://api.cborg.lbl.gov/key/manage" >}}

### Checking your spend using an API call

Assuming the API key is available in your user environment as $CBORG_API_KEY, you can check the current spend with `/user/info`, e.g.;

{{< highlight bash >}}
curl --location 'https://api.cborg.lbl.gov/user/info' --header "Authorization: Bearer $CBORG_API_KEY"
{{< /highlight >}}

Note: You must allow up to 5 seconds since your last API call for spend logs to be written to the database.

### Unable to use Free Models after Budget Cap Reached

Due to a bug in the API server, free models will stop working if the budget cap is reached. Email [scienceit@lbl.gov](mailto:scienceit@lbl.gov) for assistance.

### Requesting a budget increase

Complete a [API Project Key Request](/api_projectkey) to request a project key with an extra spend allocation (e.g. $300).



