---
title: "CBorg Client Proxy"
# meta title
meta_title: ""
# meta description
# description: "Details regarding AI-based tools available through the CBORG AI Portal"
# save as draft
draft: false
---


{{< notice "note" >}}
Got a question? Email us at [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or join the [CBorg Users Chatroom](https://chat.google.com/room/AAQAqGsqgfQ?cls=7)
{{< / notice >}}

#### CBorg Client Proxy

For advanced API users, this client-side everse proxy service streamlines the connection between your local machine and the CBorg API server by injecting your API key automatically and handling parallel connections.

**Features**:

- **Automatic Key Injection:** Inject API keys automatically from environment variable - no need to save keys in each application
- **Automatic Endpoint Routing on LBL-Net:** Detects when client is connected to LBL-net and automatically switch to locally-routed endpoint, reducing latency.
- **Usage Monitoring:** Periodically checks and reports on current key budget utilization.

{{< button "CBorg Client GitHub Project" "https://github.com/lbnl-science-it/cborg-client" >}}

