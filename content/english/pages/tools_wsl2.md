---
title: "Using CBorg with WSL 2"
meta_title: ""
description: "How to use CBorg and the CBorg API from Windows Subsystem for Linux 2 (WSL 2), including VPN connectivity fixes."
draft: false
---

[Windows Subsystem for Linux 2 (WSL 2)](https://learn.microsoft.com/en-us/windows/wsl/) is a popular environment for coding on Windows. This page covers how to connect to the CBorg API from WSL 2, including fixes for common VPN-related network issues.

---

## Network Access Requirements

The CBorg API is accessible from **LBLnet**, **VPN**, and other trusted partner networks.

If you are not on one of these networks, you can authorize your current IP address by logging in to [https://api.cborg.lbl.gov/key/manage](https://api.cborg.lbl.gov/key/manage).

{{< notice "warning" >}}
IP-based authorization may not work correctly for some legacy applications that only communicate using IPv4.
{{< / notice >}}

---

## WSL 2 + Cisco VPN: Connectivity Fix

By default, WSL 2 uses a virtual network adapter that is **not** bridged to the host's VPN tunnel. This means that when Cisco VPN is active on Windows, your WSL 2 environment may lose access to the internet and internal servers like the CBorg API.

### Solution: Enable Mirrored Network Mode (Recommended — requires Windows 11)

If you are on **Windows 11 (version 22H2 or higher)**, you can enable mirrored networking. This makes WSL 2 share the host's network interfaces directly, so VPN traffic routes correctly.

**Step 1.** Press **Win + R**, type `%userprofile%`, and hit **Enter** to open your Windows user profile folder.

**Step 2.** Create or edit a file named `.wslconfig` in that folder.

{{< notice "warning" >}}
Make sure the file is named exactly `.wslconfig` — Windows may try to save it as `.wslconfig.txt`. Check with File Explorer's "Show file extensions" option enabled.
{{< / notice >}}

**Step 3.** Add the following lines to `.wslconfig`:

{{< highlight ini >}}
[wsl2]
networkingMode=mirrored
dnsTunneling=true
{{< /highlight >}}

**Step 4.** Restart WSL by opening **PowerShell** and running:

{{< highlight powershell >}}
wsl --shutdown
{{< /highlight >}}

**Step 5.** Boot WSL back up. Your scripts should now route through the VPN correctly and be able to reach the CBorg API.

---

## Verifying Your Connection

Once WSL 2 is running, you can verify connectivity to the CBorg API with:

{{< highlight bash >}}
curl https://api.cborg.lbl.gov/
{{< /highlight >}}

You should receive a JSON response. If you get a connection error, double-check that:

- The VPN is connected on the Windows host
- You have restarted WSL after editing `.wslconfig`
- Your Windows version is 22H2 or higher (`winver` in Run dialog)

---

## Forcing IPv4 or IPv6 in Python

Since `api.cborg.lbl.gov` has both A (IPv4) and AAAA (IPv6) DNS records, Python's `httpx` library (used by the OpenAI client) will pick whichever address family it resolves first. If IP authorization is failing, or you need to pin to a specific protocol, you can force the connection to use IPv4 or IPv6 explicitly:

{{< highlight python >}}
import httpx
from openai import OpenAI

# ---------------------------------------------------------
# Step 1: Choose your transport binding
# ---------------------------------------------------------

# To force IPv4 (A record), bind to the IPv4 wildcard address:
# transport = httpx.HTTPTransport(local_address="0.0.0.0")

# To force IPv6 (AAAA record), bind to the IPv6 wildcard address:
transport = httpx.HTTPTransport(local_address="::")

# ---------------------------------------------------------
# Step 2: Inject the transport into the OpenAI client
# ---------------------------------------------------------

# Create a custom httpx client using the transport you defined
custom_http_client = httpx.Client(transport=transport)

# Pass the custom client to the OpenAI library
client = OpenAI(
    base_url="https://api.cborg.lbl.gov/v1",
    api_key="your-api-key",
    http_client=custom_http_client
)

# ---------------------------------------------------------
# Step 3: Make your request normally
# ---------------------------------------------------------

response = client.chat.completions.create(
    model="your-model-name",
    messages=[{"role": "user", "content": "Testing CBorg API on IPv6!"}]
)

print(response.choices[0].message.content)
{{< /highlight >}}

---

## Still Having Trouble?

Contact [scienceit@lbl.gov](mailto:scienceit@lbl.gov) or reach out in the [CBorg Users Chat](https://chat.google.com/room/AAQAqGsqgfQ?cls=7) group on Google Workspace for assistance.
