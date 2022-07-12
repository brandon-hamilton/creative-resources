# Verify Data Integrity

### Technical safeguards operating systems use to verify data:

**Windows**: [Windows Defender](https://docs.microsoft.com/en-us/microsoft-365/security/intelligence/criteria?view=o365-worldwide)

**macOS**: [Gatekeeper](https://support.apple.com/guide/security/gatekeeper-and-runtime-protection-sec5599b66df/web)

**Linux**: Using [Debian](https://www.debian.org/) Linux as an example, [apt-secure](https://manpages.debian.org/buster/apt/apt-secure.8.en.html) and [debsig-verify](https://manpages.debian.org/buster/debsig-verify/debsig-verify.1.en.html)

Some additional guidance and overview from Microsoft, which applies to any operating system:

- [Prevent Malware Infection](https://docs.microsoft.com/en-us/microsoft-365/security/intelligence/prevent-malware-infection?view=o365-worldwide)
- [Exploits & Exploit Kits](https://docs.microsoft.com/en-us/microsoft-365/security/intelligence/exploits-malware?view=o365-worldwide)

In most cases, these detections are signature based and not behavioral (meaning based on the static 'fingerprint' of the file, not what the file does while running).

# How you can verify data manually:

The following resources each do a great job at showing and explaining how and why to verify signatures. This is essentially what's happening in the background with the mechanisms mentioned above, though the type of signature and exact tools used may differ.

- [AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#install-linux-verify)
- [Kali Linux Downloading Instructions](https://www.kali.org/docs/introduction/download-images-securely/)
- [KeePassXC Verifying Signatures](https://keepassxc.org/verifying-signatures/)

Essentially you're computing the signature of a downloaded file, and comparing it against a publicly known value provided by the source.

This uses [SHA256](https://en.wikipedia.org/wiki/SHA-2) (Secure Hashing Algorithm).

Compute a file hash using PowerShell:
```powershell
Get-FileHash .\example.file
```

Compute a file hash using bash:
```bash
sha256sum ./example.file
```

There will be times where file signatures are not always provided.

If it's a binary, or the file is **publicly known**, then check a public signature database like [virustotal](https://www.virustotal.com/gui/home/search)

**Be sure you only submit hashes of data and not data itself to services like this, as anything you submit becomes public**

- File hashes / signatures of known software are often public
- You cannot recreate the original file content from the hash value alone, hashing functions are a one-way computation

**Be sure you only submit a domain name when checking links and not the full URL itself, as anything you submit becomes public**

- OK: `example.com`
- BAD: `example.com/confidential/link/to/financial/documents`
