# Legal, Compliance

Echoing what was stated in the [README](/README.md#legal-disclaimer), this is not legal advice. Seek professional legal advice.

## US Business Structures

These are commons business structures you may encounter:

> - Sole Proprietorships
> - Partnerships
> - Corporations
> - S Corporations
> - Limited Liability Company (LLC)

These two resources should help point you in a direction:

- https://www.sba.gov/business-guide/launch-your-business/choose-business-structure
- https://www.irs.gov/businesses/small-businesses-self-employed/business-structures

Equally important are state requirements. You'll want to check your state's website for either:

- Secretary of State
- Department of State

for further details.

**TIP**: No matter what route you take, be sure to document and write down the key details of your business like business licenses, EIN's, dates, when renewals are due, addresses, etc.

Depending on your situation you may have some, none, or more of these details.

Keeping them on hand in a notes application or a password manager will save you a ton of time whenever you need to recall the specifics for whatever it may be.

## Compliance Standards

- MPAA
	* https://www.motionpictures.org/what-we-do/safeguarding-creativity/additional-resources/
	* This details configurations and considerations in securing your hardware and any client data or intellectual property you may be handling.

---

- CIS Benchmarks
	* https://www.cisecurity.org/cis-benchmarks/
	* These help you configure a workstation for general use depending on the data you'll be handling
	* Summary:
		- MFA on everything
			* [why](https://security.googleblog.com/2019/05/new-research-how-effective-is-basic.html) [you](https://krebsonsecurity.com/2020/06/turn-on-mfa-before-crooks-do-it-for-you/) [seriously](https://www.microsoft.com/security/blog/2019/08/20/one-simple-action-you-can-take-to-prevent-99-9-percent-of-account-attacks/) [need](https://www.cisa.gov/mfa) [to.](https://owasp.org/www-community/attacks/Credential_stuffing)
		- Ensure Kernel / OS protections are on and working
			* macOS
				* [General Security Recommendations](https://support.apple.com/guide/mac-help/set-up-your-mac-to-be-secure-flvlt003/12.0/mac/12.0)
				* [General Privacy Recommendations](https://support.apple.com/guide/mac-help/guard-your-privacy-mh35847/12.0/mac/12.0)
				* [Firmware Password](https://support.apple.com/en-us/HT208198#firmwarepassword)
				* [Secure Boot](https://support.apple.com/en-us/HT208198#secureboot)
				* [Full Disk Encryption](https://support.apple.com/en-us/HT204837)
				* [SIP](https://support.apple.com/en-us/HT204899)
				* [Gatekeeper](https://support.apple.com/en-us/HT202491)
			* Windows
				* Firmware Password (see your UEFI/BIOS documentation)
				* [Secure Boot](https://docs.microsoft.com/en-us/mem/intune/user-help/you-need-to-enable-secure-boot-windows)
				* [Full Disk Encryption](https://support.microsoft.com/en-us/windows/turn-on-device-encryption-0c453637-bc88-5f74-5105-741561aae838)
				* [Controlled Folder Access](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/enable-controlled-folders?view=o365-worldwide)
				* [Isolatied Browsing](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-application-guard/install-md-app-guard)
		- Run as standard users instead of admin / root
		- Ensure firewall is blocking unwanted INBOUND connections
		- All OUTBOUND connections on untrusted networks are (ideally) protected with a VPN back to a trusted network

VPN should not to be confused with a personal / public VPN service used for privacy.

Keep in mind these recommendations are general and considered more as a 'default' for production computing rather than a complete security solution.
