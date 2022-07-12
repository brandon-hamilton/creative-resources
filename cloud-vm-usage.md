##  VM / Cloud Deployment

Also known as VDI or vWS, virtual machine deployment will become larger in the future. 

Why is this technology worth looking at?

### Virtualization

- Resiliancy (an update gone wrong doesn't stop work)
- Scalable workloads (need a powerful GPU to render something once?)
- Security / Workspace Isolation (in the event malware delivery is successful, revert the workspace to a clean state)
- Testing / Learning (try new tools and configurations without accidentally breaking your system)
- Development Environment
- Portability (move virtual appliances between hosts, have a backup of your entire workspace)

### Cloud

- Immediate workspace access from any compute device should your physical workstation fail
	* If there are supply chain constraints, a real replacement could take months
	* Do not waste $1000+ on a replacement that is not future proofed, and only temporary - this is what VM's are for
- Ephemeral environments (security + availability)
- All major cloud providers offer a virtual desktop as a service
	* GCP and AWS offer this on demand, or pay by the minute at around $2.60/hr
- Thin client access 
	* Access your tools remotely
	* No opening ports on your home network
		- This would require VPN infrastructure or networking knowledge to not put your home network at risk
	* No putting your expensive devices at risk of theft or damage while traveling

### PCoIP (recommended protocol for running creative applications remotely)

- Much higher performance than other remote access protocols (it's 1:1 in responsiveness for drawing / painting)
- Designed to support creative workflows (video / audio editing, 2D / 3D, Wacom Tablet & USB passthrough)
- Already being used by studios in the creative fields
- Protects data by keeping it on the 'server'

It's different than other remote access software in that you cannot pull data directly from the **server** back to the **client** over this protocol without an alternative means of remote access (e.g. ssh)

## Teradici

- [Contact Teradici](https://connect.teradici.com/contact-us)
- [What is the PCoIP protocol?](https://www.teradici.com/what-is-pcoip)
- [Teradici Blog, Create an instance with Unreal Engine preinstalled in AWS](https://connect.teradici.com/blog/teradici-unreal-engine-aws)
- [Teradici Blog, Windows Deployment](https://connect.teradici.com/blog/microsoft-automated-deployment-windows)
- [Teradici Github Deployment Scripts](https://github.com/teradici/cloud_deployment_scripts)
- [Teradici Software and Mobile Client Downloads](https://docs.teradici.com/find/product/software-and-mobile-clients)

**Teradici Windows Client**:

- [Download - Windows Client](https://docs.teradici.com/find/product/software-and-mobile-clients/2022.04/software-client-for-windows)

1. Downloads and Scripts
2. Agree to the ToS
3. `Download Now` will download the installer
4. `SHA` will reveal the installer's hashes to verify the integrity
	- Copy the string of letters / numbers under `SHA-256 hash for pcoip-client_22.04.0.exe`
	- Open the folder containing the downloaded `.exe` file
	- In an empty space in the that folder window, `Shift+Right-Click > Open PowerShell window here`
	```powershell
	Get-FileHash .\pcoip-client_22.04.0.exe | Select-String PASTE_THE_STRING_OF_LETTERS_AND_NUMBERS_HERE
	```
	- Hit enter
	- If it matches you should see the following:
	```powershell
	@{Algorithm=SHA256; Hash=THE_STRING_YOU_PASTED_IS_HERE
	```
	- If there's no match you won't see that output, download the file again and ensure the hash matches before you run it.

If you're familiar with PowerShell and scripting they provide the exact URL's to use in a script to automatically install, check for updates, and run this software.

**Teradici Linux Client**:

- [Download - Linux Client](https://docs.teradici.com/find/product/software-and-mobile-clients/2022.01/software-client-for-linux)

> ```bash
> # Ubuntu 18.04
> curl -1sLf https://dl.teradici.com/DeAdBCiUYInHcSTy/pcoip-client/cfg/setup/bash.deb.sh | sudo -E distro=ubuntu codename=bionic bash
> # Ubuntu 20.04
> curl -1sLf https://dl.teradici.com/DeAdBCiUYInHcSTy/pcoip-client/cfg/setup/bash.deb.sh | sudo -E distro=ubuntu codename=focal bash
> ```

Public key for reference:
```
# pub   rsa4096 2020-09-24 [SC]
#      9A70 FD64 D3F7 3934 1A2F  8AC7 4581 DD6A CC91 0D6F
# uid           [ unknown] Teradici Corporation <gpg@teradici.com>

```

- [Install - Linux Client](https://www.teradici.com/web-help/pcoip_client/linux/22.01/)

> ```bash
> sudo apt update
> sudo apt install pcoip-client
> ```

### Teradici in AWS

- [Overview of VDI deployment in AWS for creative professionals](https://aws.amazon.com/blogs/media/deploying-your-favorite-post-production-applications-on-aws-virtual-desktop-infrastructure/)
- [This guide](https://aws.amazon.com/blogs/media/getting-started-with-aws-cloud-video-editing/) covers setting up a cloud VM for video editing.
	* Geared towards organizations with an existing Teradici CAS license
	* Individuals can easily choose the Teradici pay-as-you-go AMI from the marketplace instead
- [AWS GitHub for deploying editing workstations in the cloud](https://github.com/aws-solutions/edit-in-the-cloud-on-aws)
- [The Teradici appliance in AWS](https://aws.amazon.com/marketplace/pp/prodview-mj35z5mqzmanm)
- How to [retrieve the Windows admin password for initial logon](https://aws.amazon.com/premiumsupport/knowledge-center/retrieve-windows-admin-password/)

Be sure to read [cloud-aws.md](/cloud-aws.md) first. That document covers specifics, while this provides a complete general overview from account creation to starting the instance.

#### Setup

**Subscriptions**: these are marketplace offerings in AWS, or what VM's you can deploy and use in their cloud. That's what they call them. You pay per hour unless you add a yearly software usage agreement up front.

1. Create your AWS account (this is called the root account)
	* It's free to sign up
	* You'll have free trial usage on many 'subscriptions'
1. Contact AWS support for resource allowances of G instances (GPU compute resources) for up to 8 vCPU
	* This can take anywhere from 24-72 hours for approval (especially on newly created accounts, additional verification steps may be required)
1. 'Subscribe' to whichever Teradici marketplace offering you'd like to use
	* Subscribing is free, it adds the item to your account for use
	* You're not paying anything up front unless you also add a software usage agreement
		- This will be a larger fee paid up front on a yearly basis
		- This is not enabled by default and you need to walk through prompts to add this up front cost to your 'subscription'
	* You can subscribe to all of them if you want, it just makes them available for you to use (which is exactly what we want)
1. Create your own key in the KMS (Key Management Service)
	* This is recommended if you're handling customer / client data in the cloud.
	* Save the key to your password manager

1. At this point you can continue through the prompts to launch an instance.

#### Launch an instance:

1. EC2
	* `Instances` > `Launch Instances`
	* `Search` > `Teradici` > `OK` > `Confirm Any Changes`
	* `Instance Type`, choose one of the following:
		- `g4dn.xlarge`
		- `g4dn.2xlarge`
	* Key Pair, if you don't have any create a new `rsa` key pair
		- Name is anything you like `teradici_aws_rsa_key`
		- `.pem` format
		- Keep a backup of the downloaded `.pem` file in your password manager, this is your private key
			* In AWS this block of text is used to decrypt the Windows login password
	* Network Settings
		- AWS creates a security group by default
		- This is just a set of ports required to be open on the server, to receive connections from the Terdici client (you)
		- Leave everything checked that's checked
		- Change `Anywhere 0.0.0.0/0` to `My IP`
			* This is highly recommended - it firewalls the Teradici server so it can only receive inbound communication from your current public IP address
			* You may want to consider securing access to the server with your own VPN in AWS.
	* Launch Instance	

#### First time login:

1. After launching the instance, [wait ~4 minutes before retrieving the Windows password](https://aws.amazon.com/premiumsupport/knowledge-center/retrieve-windows-admin-password/) (it can take longer)

1. Connect to the Teradici instance
	* Run the Teradici client on your local machine
	* Enter the IP address of the Teradici 'server' in the cloud
		- You'll be alerted that this is an 'insecure' self signed certificate
		- This can be confusing if you're not familiar with [PKI](https://en.wikipedia.org/wiki/Public_key_infrastructure). Your connection _is secure to and from this endpoint_, however it's up to you to verify the certificate is correct as it's not 'known' by any public certificate authority, as it was created internally just for this connection
		- In this case, simply looking at the certificate will show you it was made for this Teradici instance.
		- You can write down, screenshot, or make note of the fingerprint to ensure it's always the same fingerprint from this point on (this is what your browser does automatically when a certificate is publicly recognized by a certificate authority)
		- The reason this is created automatically for you, is to avoid requiring you to provision your own PKI
	* Enter the login credentials when prompted for them, and you're done.
		- **RECOMMENDED**: Change or update the admin password if it's not unique
		- **RECOMMENDED**: Create a standard user account to use rather than the administrator (Windows) or root (Linux) account

### Teradici in Google Cloud

Google Cloud Quick-Start, step by step deployment of a trial VM:

- https://www.youtube.com/watch?v=pNsAReBaAfA
- https://www.teradici.com/web-help/pcoip_client/linux/22.01/installation/install_client_ubuntu/

1. Create a GCP account
	* It's free to sign up
	* You pay only for resources you use

1. Be sure to 'upgrade' your account from a trial account, to a normal account
	* You can do this from the top of the UI in the GCP dashboard

1. Request compute resources from GCP to run vGPU based instances
	* Attempting to start a GPU compute instance will prompt you to do this
	* This can take up to two days, or as little as a couple hours

1. Download and install the teradici client ([see steps above](#teradici))
	* Download:
		- https://docs.teradici.com/find/product/software-and-mobile-clients/2022.01/software-client-for-linux
	* Install:
		- https://www.teradici.com/web-help/pcoip_client/linux/22.01/

1. Start the Teradici VM
	* https://www.teradici.com/web-help/cloud-access-software/gcp/documents/getting-started-windows/getting-started-guide/
	* **IMPORTANT**: it's recommended you set the firewall rules here to only accept source traffic from your client device's current public IP address.
		- `curl ifconfig.co`
		- [Google, what's my ip?](https://www.google.com/search?q=whats+my+ip)
		- [DuckDuckGo, what's my ip?](https://duckduckgo.com/?t=ffsb&q=whats+my+ip&ia=answer)

1. Configure a Windows account password for desktop access
	* https://cloud.google.com/compute/docs/instances/windows/generating-credentials#generating_credentials

1. Connect to the Teradici instance
	* Run the Teradici client on your local machine
	* Enter the IP address of the Teradici server in the cloud
		- You'll be alerted that this is an 'insecure' self signed certificate
		- This can be confusing if you're not familiar with [PKI](https://en.wikipedia.org/wiki/Public_key_infrastructure). Your connection is secure to and from this endpoint, however it's up to you to verify the certificate is correct as it's not 'known' by any public certificate authority, as it was created internally just for this connection
		- In this case, simply looking at the certificate will show you it was made for this Teradici instance.
		- You can write down or make note of the fingerprint to ensure it's always the same fingerprint from this point on (this is what your browser does automatically when a certificate is publicly recognized by a certificate authority)
		- The reason this is created automatically for you, is to avoid requiring you to provision your own PKI
	* Enter the login credentials when prompted for them, and you're done.
		- **RECOMMENDED**: Change or update the admin password if it's not unique
		- **RECOMMENDED**: Create a standard user account to use rather than the administrator (Windows) or root (Linux) account

#### Teradici in Azure

Azure Deployment guide for a developer ready PCoIP VM:
- https://connect.teradici.com/hubfs/Teradici%20Virtual%20Desktops%20for%20Game%20Developers.pdf

**NOTE**: requires minimum 5 license purchase @$120/license

---

#### Teradici Usage Summary

By default copy/paste on the clipboard works to/from the remote machine.

You can pass through local USB devices from the menu in the Teradici client window

At a cost of roughly $2.50/hr:

```
# 2.50/hr x 8 hrs/day x 5 days/week x 4 weeks/month
(((2.50*8)*5)*4)
= 400.0
```
- 8vCPU's
- 30GB RAM
- 1x NVIDIA Tesla P4

Realistically you're not using this full time. Most likely you'd be using it for testing or even just a day where you need it, which comes to roughly $20.0 for an 8 hour workday.

---

### macOS in AWS

Run a full macOS desktop environment in the cloud, connecting via ssh and Teradici.

**NOTE**: this runs on bare-metal and requires a 24-hour minimum usage fee (roughly $26)

- Overview
	* https://connect.teradici.com/blog/aws-macos-remote-access
- Step-by-step deployment guide
	* https://aws.amazon.com/getting-started/hands-on/launch-connect-to-amazon-ec2-mac-instance/
	* https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-mac-instances.html#mac-instance-launch
- AWS Marketplace Listing
	* https://aws.amazon.com/marketplace/pp/prodview-isaghmqny2wr6

---

### Nvidia:

The easiest way to use Nvidia vGPU solutions is through a cloud provider offering a virtual desktop

- Teradici + GCP
- Teradici + AWS
- Teradici + Azure
- Teradici + VMware Horizon

Alternatively to setup your own, you'll need a Teradici software license, a supported Nvidia graphics card (non-consumer cards like Quadro or A series) and potentially a Teradici 'card' installed in your hardware.

You may also require specific virtualization technology such as VMware ESXi or Hyper-V (VMware Workstation or VirtualBox will not work)

vGPU Software & Version Index
- https://docs.nvidia.com/grid/index.html

vGPU Supported Products (cards that support GPU passthrough)
- https://docs.nvidia.com/grid/latest/product-support-matrix/index.html

What is vGPU
- https://www.nvidia.com/en-us/design-visualization/virtual-workstation/
- https://www.nvidia.com/en-us/data-center/graphics-cards-for-virtualization/

Cost + how to use with virtualization software:
- https://www.nvidia.com/content/dam/en-zz/Solutions/design-visualization/solutions/resources/documents1/Virtual-GPU-Packaging-and-Licensing-Guide.pdf 

Example use case:
- https://www.nvidia.com/content/dam/en-zz/Solutions/design-visualization/solutions/resources/documents1/vgpu-media-entertainment-DNEG--customer-story.pdf

---

### Adobe

CC VDI Deployment
- https://helpx.adobe.com/enterprise/using/creative-cloud-deployment-on-vdi.html

