# Protecting Your Work

Methods and techniques for protecting either sensitive or proprietary assets.

## Safely Sharing Work

- Require email to view
	* if search engines index the link, the public will be required to provide an email to view it
- Password protect link
	* if search engines index the link, the public still cannot view it
- Set link expiry
	* expiring links after 1 month is a good standard to follow
- Hyperlink auditing
	* capture the IP address, client device, and time your links were opened (platform specific)

## Watermarking

TO DO

#### Generate Unique Watermarks

This technique can apply to both protected or internal work, as well as sensitive forms and documents.

When sending government ID's or forms to a business, watermark them with: 

```
"For [insert business name]'s Use Only"
```

When work needs to be sent to different departments internally, you can and likely will have to watermark them for internal use only.

## Encryption

Sometimes you may be required to encrypt documents or files before sending them. Here are multiple ways to do this.

Encryption Standards:

- AES 128
- AES 256

Encryption Types:

- [Symmetric](https://en.wikipedia.org/wiki/Symmetric-key_algorithm)
	* There is one key to encrypt / decrypt the contents
- [Asymmetric](https://en.wikipedia.org/wiki/Public_key_encryption)
	* There are two keys to encrypt / decrypt the contents
	* Public Key: can be shared publicly, others may use this key to encrypt content to send to you, that only your private key can decrypt
	* Private Key: must stay private, used to decrypt or authenticate content sent to you

Another way to look at asymmetric / public key cryptography:

> - Think of a key to a mailbox
> - Break that key in half
> - One half is the private key that you keep and no one else has knowledge of
> - One half is the public key, which can be copied and given to anyone who wants to communicate or authenticate with your mailbox
> - Alice can encrypt a letter to Bob, using Bob's public key, with her private key
> - Bob can then decrypt the letter using his private key, because the letter was encrypted to him using his public key
> - No one else can decrypt the letter without Bob's private key

Shoutout to [Paul Asadoorian](https://twitter.com/securityweekly) for this analogy.

## Application Encryption

- Adobe products have builtin 128-bit password protected (symmetric) encryption for most of their software.
	* [Acrobat](https://www.adobe.com/acrobat/hub/how-to/how-to-secure-pdf-documents)
	* [Photoshop](https://helpx.adobe.com/photoshop/using/saving-pdf-files.html#save_in_photoshop_pdf_format)
- Other applications may have a similar feature

## Archive Encryption

Compressed archives usually offer a way to AES-256 encrypt the contents.

- [7-Zip](https://www.7-zip.org/) will be the most straight forward GUI option, mainly for Windows
- Most Linux archive managers have builtin encryption options

## Commandline Tools

This will always be the easiest, but is unforunately the least straight forward if you're unfamiliar with the commandline

#### OpenSSL

https://www.openssl.org/

OpenSSL is available by default on macOS and Linux. You can install it on Windows.

This will encrypt and decrypt the file 'file.txt', you provide the password on the commandline. Generate / save it from your password manager.

```bash
# create a sample file to work with which we'll try to read at the end
echo 'if you can read this, decryption worked!' > file.txt

# encrypt
openssl aes256 -e -in file.txt -out file.txt.aes256 -pbkdf2
enter aes-256-cbc encryption password:
Verifying - enter aes-256-cbc encryption password:

# check cwd
ls
doc.txt  doc.txt.aes256

# decrypt
openssl aes256 -d -in doc.txt.aes256 -out doc.txt -pbkdf2
enter aes-256-cbc decryption password:

# make sure we can read the text file
cat file.txt
if you can read this, decryption worked!
```

#### gpg

https://www.gnupg.org/

GnuPG is available by default on Linux and can be installed on macOS with [brew](https://brew.sh/)

```bash
# encrypt, you'll be prompted for password
gpg --no-symkey-cache --symmetric --cipher-algo AES256 file.txt 

# check cwd
ls
file.txt  file.txt.gpg

# decrypt, provide password at prompt
gpg --no-symkey-cache -d file.txt.gpg 

gpg: AES256 encrypted data
gpg: encrypted with 1 passphrase
if you can read this, decryption worked!
```
