# Protecting Your Business

Whether you're freelance or applying to work for a studio job, some common things to keep in mind:

- Cross reference everyone and everything using [OSINT](https://en.wikipedia.org/wiki/Open-source_intelligence)
- Verify contact information (with your point of contact or using what's publicly available)
- Only provide business or sensitive details directly to a company you know, or to your point of contact at that company whom you already know
- Verify the details and context if you weren't expecting to be contacted for something (phishing usually prompts you to take an action, under a time constraint)
	* Phishing can be sophisticated, especially if you work at a large company.
	* Contractors (freelancers) can be targeted to gain access to their client's infrastructure.
	* When in doubt, check with a trusted colleague if they believe the context makes sense or if they feel something is amiss too.
	* Check with contacts out-of-band, e.g. is the email suspicious? Reach the sender over Slack, Signal, etc to verify.

---

See [record-keeping](/record-keeping.md) for a comprehensive list based on category. Also take a look at [scoping](/scoping.md) for a similar set of items related to the points below.

The following are highlights to always keep in mind when *running your business*, self employed or not.

Nearly all of the points in the section below are from this BHIS webcast: [How to Fail at a Pentest with John Strand | 1-Hour](https://www.youtube.com/watch?v=g3yROAs-oAc). There's a surprising amount of overlap between business operations as a pentester and a digital artist. No matter what you do or what level you're at, these lessons are invaluable to have with you to keep in mind moving forward.

- Maintain 8-9 hour days
	* Overtime is not always bad (try to anticipate and prepare for it)
	* Overtime is somtimes unavoidable, do your best to balance your life
	* Are you thinking about work when not working?
	* Are you spending time with family?
	* Are you getting out of the office to do unrelated things? Hobbies?
	* Are you exercising?
- Create or define a [scope](/scoping.md) of work that's agreed upon with everyone involved before you even begin
- Create an audit trail
	* Get everything in writing (creative decisions, changes of direction, time and budget constraints, etc)
	* Follow up any phone calls or verbal discussions with a recap in writing, ask for confirmation, then proceed
	* Maintain an email chain or communication log with everyone copied / on the platform (slack, google chat, etc)
	* Did a team member reply directly to you and remove everyone else from the reply?
	* Did a team member reply out of band via text or a different communications app?
	* Be sure to loop everyone back in when *you* reply
- Follow up with email > phone > apps (slack, discord, skype, etc) >>> text
	* If you were expecting to touch base with a point of contact, be sure other points of contact on the project are in the loop + can see the email attempts
	* Check in every few hours during the work day if you haven't heard back
	* Check in every day if you still haven't heard back
	* Don't be afraid to be 'annoying', confirmation up front costs less time and money than not following up
	* If there is a budgetary or timing change, be sure the person(s) responsible for timing and budget are in the loop

---

## Device and Software Tips

- Notifications & lock screens
	* Disable notification previews unless the device is unlocked.
	* Limit actions and info available on lock screens:
		- [Windows: User information on lock screen](https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/interactive-logon-display-user-information-when-the-session-is-locked)
		- [Windows: Sign-in require CTRL+ALT+DEL](https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/interactive-logon-do-not-require-ctrl-alt-del)
		- [Windows: Shutdown system without login](https://learn.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/shutdown-allow-system-to-be-shut-down-without-having-to-log-on)
		- [iOS: Control access to info on lock screen](https://support.apple.com/guide/iphone/control-access-information-lock-screen-iph9a2a69136/16.0/ios/16.0)
		- [iOS: Disable notification previews (set Show Previews to 'Never')](https://support.apple.com/guide/iphone/change-notification-settings-iph7c3d96bab/ios)
		- [Android: Hide sensitive notifications on the lock screen](https://support.google.com/android/answer/9079661#zippy=%2Coption-hide-sensitive-content-from-notifications-on-your-lock-screen)
		- [Android: Hide notifications on lock screen](https://support.google.com/android/answer/9075927#zippy=%2Cstop-showing-notifications-on-your-lock-screen)
		- [Android: Manage app's notifications](https://support.google.com/android/answer/9079661#zippy=%2Cturn-notifications-on-or-off-for-certain-apps)

#### Conferencing + Streaming

- Reflections in glasses (be aware what's on screen, are other projects visible?)
- What's visible in your office and workspace? (be aware of surroundings, documents, files)

---

## Data Maintenance

- [Why & Where You Should Plant Your Flag](https://krebsonsecurity.com/2020/08/why-where-you-should-you-plant-your-flag/)

The article above by [Brian Krebs](https://twitter.com/briankrebs) explains the concept of "planting your flag" with direct links to accomplish everything.

What it means is to establish and control access to your data. Your data exists with these entities whether you know it or not, and most importantly it can affect your ability to create or start a business.

With the credit bureaus, having visibility into your own credit history and freezing it can save you time and money. Both, accessing your own accounts and freezing your credit is free. You never need to sign up for an expensive service just to see and manage your account.

## Data Removal

This is more important for streamers or content creators, but it's a valuable exercise for anyone to see what their online footprint looks like.

[Michael Bazzell](https://twitter.com/inteltechniques) provides the ultimate resource for data removal in the form of the freely available [Data Removal Workbook](https://inteltechniques.com/workbook.html).

The entire guide is free, and the removal section is one part of a larger process. Doing all four parts is a great way to understand how your data is used, where it ends up, and how to lock it down. 

---

# Due Diligence

Ways to review information for accuracy and legitimacy.

The goal of these [OSINT](https://en.wikipedia.org/wiki/Open-source_intelligence) sections is to outline a basic framework you can fall back on when in doubt. Additional resources are linked to learn more if you need to.

## Email OSINT

How to get an overview of a sender using email:

- [OSINTCURIOUS - Ritu's Top 5 Email Address OSINT Resources](https://osintcurio.us/2022/04/13/ritus-top-5-email-address-osint-resources/)

When you receive emails inquring about work from an unknown sender, it can be difficult or tricky to validate the legitimacy of the message. This is especially true if work is slow, you don't want to lose opportunities. Taking a moment to review the context of the inquiry can save you a lot of time and hassle, ultimately keeping you on track and out of trouble.

- Is this is corporate domain? (e.g. `firstname@examplegamestudio.net` vs `somegamestudiopersonmaybe@gmail.com`)
	* Double check the [spelling](https://en.wikipedia.org/wiki/Typosquatting)
	* Review the company's website
	* Check LinkedIn
- Is this a personal account? (*@gmail.com, *@onmicrosoft.com, *@protonmail.com, etc)
	* [Search public records by email](#email-osint)
- Does the email provide their name?
	* [Search public recrods by name](#name-osint)
- Did the email fail any DNS record checks?
	* `SPF`?
	* `DKIM`?
	* `DMARC`?
	* `DNSSEC`?
	* If it fails `SPF` or `DKIM` and it's not junk from a mailing list, it's [potentially spoofed or forged](https://www.proofpoint.com/us/threat-reference/business-email-compromise)
	* If the domain has `SPF`, `DKIM`, and `DMARC` properly configured, it's likely the domain itself is not compromised but [the email should still be reviewed](https://www.proofpoint.com/us/threat-reference/email-account-compromise)
- Is the email address known?
	* Does google searching the email address return results related to the person's professional identity?
	* Does the email address look like it could also be a [username](https://whatsmyname.app/)?
	* Does this email have a presence with online services / communities that make sense?
	* Possibly created just for sending emails like this?
- Is the content of the email suspicious?
	* Wording appears strange or inconsistent
	* Requires some form of payment or investment up front before continuing

One option with suspicious emails is to take a *non-confidential* string of text from the email, or describe the nature of the email as a sentence in quotes `"<description>"`, and try searching it through Google as `"<string>" site:<site-url>` where `<site-url>` can be something like `reddit.com/r/<some-art-community>/` replacing `<site-url>` or `<some-art-community>` with a place you know of where others share their work / freelancing experiences. Often when a scam is discovered, it's usually mentioned throughout reddit, Discord, etc. If the sender is using a similar template across every email, chances are someone else has posted a copy of theirs to one of these places. Searching text can help quickly identify this.

Be sure the text you past into Google or Discord's search is *not confidential* as in it's not information that *could* be proprietary or not public. In the event the email is legitimate you don't want to have posted anything sensitive or proprietary.

## How to check DNS records

Here's how to get an idea of the legitimacy of the email by looking at the headers:

- [13Cubed - Email Header Analysis and Forensic Investigation](https://www.youtube.com/watch?v=nK5QpGSBR8c)

- [DNS (Domain Name Service) Wikipedia](https://en.wikipedia.org/wiki/Domain_Name_Service)

Each of the following examples provides commands for `dig` or `nslookup`, use whichever you prefer.

Quad9 (`9.9.9.9`) is the public DNS server used here because of their [privacy, security, and preformance](https://www.quad9.net/). You can also use [google's public DNS server](https://developers.google.com/speed/public-dns/) which is equally reliable, at `8.8.8.8`.

**NOTE**: Keep in mind making DNS queries to a trusted server like this is still unencrypted. Anyone on the wire can still see and potentially modify the queries. This is why there's been such a push for DNS Over HTTPS in the browser and OS. DNS Over TLS is another option, more in line with the original specification. [It's also the main reason a VPN is suggested when using untrusted networks](https://www.rapid7.com/fundamentals/man-in-the-middle-attacks/), though the VPN itself needs to be trusted.

Newer versions of `dig` have the `+https` and `+tls` options. Append these arguments to your dig command to make use of encryption (in the case of `+https` you need to specify the hostname instead of the IP address for the server):

```bash
dig @9.9.9.9 example.org -t MX +tls
dig @dns.quad9.net example.org -t MX +https
```

This is still not perfect, but it will encrypt your queries.

## MX Records

Mail exchange records, or what domains are authorized to *receive* your mail.

```bash
dig @9.9.9.9 example.org -t MX
nslookup -type=MX example.org 9.9.9.9
```

Noting the domains in the response will indicate what mail provider the domain owner uses, and help us review the remaining records.

## SPF Records

First you can check the `TXT` records of a domain for [SPF](https://en.wikipedia.org/wiki/Sender_Policy_Framework) settings. This lists what IP addresses and domains are permitted to *send* mail on behalf of this domain.

```bash
dig @9.9.9.9 example.org -t TXT
nslookup -type=TXT example.org 9.9.9.9
```

What this means if you use Google Workspace for example, a google domain would be listed here which would have been [configured as part of setting up your domain with Google Workspace](https://support.google.com/a/answer/10685031).

Your next steps will depend on the results, and you can use this entire section to determine what to do next. An easy way to interpret SPF records is using the [mechanisms](https://en.wikipedia.org/wiki/Sender_Policy_Framework#Mechanisms), [qualifiers](https://en.wikipedia.org/wiki/Sender_Policy_Framework#Qualifiers), and [modifiers](https://en.wikipedia.org/wiki/Sender_Policy_Framework#Modifiers) sections on wikipedia.

- [Sender Policy Framework Implementation, Wikipedia](https://en.wikipedia.org/wiki/Sender_Policy_Framework#Implementation)
- [RFC 7208](https://www.rfc-editor.org/rfc/rfc7208)

If you find IP addresses listed, you can perform reverse lookups of the address, mapping it to a domain (these mappings are known as `PTR` or Pointer Records):

```bash
dig @9.9.9.9 -x <ip-address>
nslookup -type=PTR <ip-address> 9.9.9.9
```

Of course you can also review further domains using these same techniques if there are others listed here.

## DMARC Records

Next we'll look at [DMARC](https://en.wikipedia.org/wiki/DMARC) records. These records tell the recipient's mail client what to do with an email if it fails this check. We do this by prepending `_dmarc.` to the base domain name:

```bash
dig @9.9.9.9 _dmarc.example.org -t TXT
nslookup -type=TXT _dmarc.example.org 9.9.9.9
```

The results likely show a `p=` value. This can be any of the following:

- `none`, this means the recipient's mail client (your mail client) is permitted to allow mail that does not pass the `DMARC` checks
- `quarantine`, your mail client will mark the incoming message as quarantined, likely moving it to spam, if it does not pass the `DMARC` checks
- `reject`, your mail client will completely discard the message if it fails `DMARC` checks. This is typical for a bank, or large webhost.

A result of `none` may be an indicator that this domain's DNS records are misconfigured, and it's possible the mail can be spoofed if other protections fail.

## DKIM Records

Next we'll check `DKIM` records

- [Domain Keys Identified Mail - Verification](https://en.wikipedia.org/wiki/DomainKeys_Identified_Mail#Verification)

Quoting the overview from [Wikipedia](https://en.wikipedia.org/wiki/DomainKeys_Identified_Mail#Overview):

> DKIM provides the ability to sign a message, and allows the signer (author organization) to communicate which email it considers legitimate. It does not directly prevent or disclose abusive behavior.

To do this you need the *domain* (`d=<domain>`) value and the *selector* (`s=<selector>`) value from the headers of an email you've received.

When viewing the headers, do a `Ctrl+f` search for `d=` and `s=` to obtain these values, and plug them into the command below replacing `<selector>` and `<domain>`.

**NOTE**: You may also see if `DKIM` passed or failed here when searching through the headers by looking for `dkim=`. You'll either see a `pass` or `fail`.

```bash
dig @9.9.9.9 <selector>._domainkey.example.org -t TXT
```

You may see other records in the result, such as `CNAME` records pointing to another domain (essentially indicating they're related). The `p=` value in the result is the public key used to cryptographically verify the message content has not been tampered with in transit. Doing this verification manually is out of scope for this overview, but your mail client will let you know if a message fails to pass `DKIM` with either `dkim=pass` or `dkim=fail` in the message headers.

## DNSSEC

Last, we'll see if DNSSEC has been set:

```bash
dig @9.9.9.9 example.org -t DS
nslookup -type=DS example.org 9.9.9.9
```

If the command returns a DS key value, you know the owner of the domain enabled DNSSEC with their registrar. This is something that not many domains have implemented, and it's usually as easy as checking a box with your registrar (e.g. google, cloudflare, etc). It's an additional signature that makes it harder to hijack or spoof the domain in the scope of email.

- [Cloudflare: How DNSSEC Works](https://www.cloudflare.com/dns/dnssec/how-dnssec-works/)
- [Google Cloud: DNSSEC](https://cloud.google.com/dns/docs/dnssec)
- [Google Cloud: Enabling DNSSEC](https://cloud.google.com/dns/docs/dnssec-config#enabling)
	* It's as simple as setting it to `On`
- [ICANN: What Is DNSSEC And Why Is It Important](https://www.icann.org/resources/pages/dnssec-what-is-it-why-important-2019-03-05-en)

---

## Name OSINT

We're mainly interested in the person's professional online presence. In almost every case you can use these points to start tying together data to further validate it's legitimacy.

Where you shouldn't necessarily use this, is for personal commissions by individuals. Email OSINT will almost always be a better and less invasive option in those cases.

- Person
	* LinkedIn
	* Facebook
	* Twitter
	* Website
	* Company
		- Domain
		- Location -> Public records / corporate filings

Again, this is all about tying data points together. They should in some way all reference or point back to each other. Where they don't is where you can spend more time scrutinizing the difference.

---

# Active Defense

This section is mainly for anyone doing content creation + social media, but equally for anyone clicking links and opening documents frequently (basically all of us).

[John Hammond](https://twitter.com/_JohnHammond), a popular infosec professional who also does content creation, recently (as of 2022.09.14) posted a walkthrough of a phishing attempt masquerading as YouTube's copyright claim's system:

- <https://twitter.com/_JohnHammond/status/1564246090748141568?cxt=HHwWgICxxYTiqLUrAAAA>

The phish is not sophisticated, but it's the same sequence of events threat actors use in targeted attacks against companies to gain initial access: 

- *email > click a link > download a file > open the file > malware*. (You don't always 'see' malware executing)
- *email > click a link > enter credentials > adversary has access to that account*.

In some cases, if an adversary can access your Google workspace or Dropbox, that's more valuable than directly accessing your device.

Since we aren't all part of a large corporation providing endpoint network monitoring and device configuration, yet we sometimes work directly with companies of that scale (and they may expect us to have some controls and safeguards in place on our machines when we're just creative professionals), I found the following technique to be a great indicator and easy way for anyone to gain at least *some* visibility into their own systems without requiring any administrative knowledge.

This blog post written by another infosec favorite, [HuskyHacks](https://twitter.com/HuskyHacksMK), details what a canary token is, and how easy it is to create them:

- <https://notes.huskyhacks.dev/notes/content-creators-i-will-teach-you-cyber-jiu-jitsu>

Like the name implies it's a file that you make to look 'valuable' that when opened, will immediately notify *you*, via email or some other means. The idea is you create a fake file to blend in with other files on your device (`Latest_Job_Notes.docx` or the classic `Passwords.xlsx` which hopefully you are not doing for real). You have no reason to ever touch or open that file once you plant it on your machine, in the cloud, or on a mobile phone, so you know if it's accessed, either an application is being bad and reading your files like malware would, or you may have just gotten a heads up on being compromised by malware.

This holds true for macOS, Windows, Linux, Android, iOS -- it's not a problem unique to Windows. The techniques may be different for each (and so is setting up certain types of canary tokens for that matter) but the attack unfolds generally the same. You're either sent a document or a link, which in most cases you need to interact with. It's more rare or novel 0-day exploits where you can be 'popped' without any interaction.

Generate these tokens here, for free: <https://canarytokens.org/generate#> they have a robust paid version that allows them to offer a free version.

Play around with it, see how it works, make note of any false positives you may find for your own system, and make the attacker's job harder!
