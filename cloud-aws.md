# Cloud AWS

https://aws.amazon.com/

This document was mainly written for using Teradici + a cloud workstation in AWS.

- Have a backup of your entire workspace in case of hardware failure (access from a backup / temporary laptop)
- Secure work data while traveling by keeping it in the cloud and off the local machine

## Review Billing

For a complete cost breakdown:

Login > (Click account name in the top right) > Billing Dashboard > Bills > Expand All


## Creating EC2 Snapshots

Console Menu > Snapshots > Create Snapshot > [Select Volume / Instance ID(s)] > Create Snapshot

Unencrypted volumes can be encrypted later by creating a key via KMS (\$1/mo/key) and then copying + encrypting the snapshot.

*   [Snapshot Encryption](https://docs.aws.amazon.com/en_us/console/ec2/snap-encryption)

*   [Copying a Snapshot](https://docs.aws.amazon.com/en_us/console/ec2/copying-snapshot)

*   [Create a Volume from a Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html#ebs-create-volume-from-snapshot)

Snapshots cost by GB/mo detailed here: [ebs pricing](https://aws.amazon.com/ebs/pricing/)

For example, a snapshot of a 30GB VM you've taken to roll back to instead of having to redo an entire install, costs about \$1.60 per month to maintain.


## Restore from a Snapshot

<https://docs.aws.amazon.com/prescriptive-guidance/latest/backup-recovery/restore.html>

**TIP**: you can create a volume larger than the snapshot you're restoring from. It will show up as empty disk space in `Disk Management`. Extend the disk space in Windows as you would a physical disk with `Disk Management`

For example, follow these steps to restore a volume to an earlier point-in-time backup by using the console:

> 1. On the Amazon EC2 console, on the Elastic Block Store menu, choose Snapshots.
> 
> 2. Search for the snapshot that you want to restore, and select it.
> 
> 3. Choose Actions, and then choose Create Volume.
> 
> 4. Create the new volume in the **same Availability Zone** as your EC2 instance (if your instance is in us-west-1b, it must be 1b).
> 
> 5. On the Amazon EC2 console, select the instance.
> 
> 6. In the instance details, make note of the device name that you want to replace in the Root device entry or Block Devices entries.
> 
> 7. Attach the volume. The process differs for root volumes and non-root volumes.

For root volumes:

> - Stop the EC2 instance.
> - On the EC2 Elastic Block Store Volumes menu, select the root volume that you want to replace.
> - Choose Actions, and then choose Detach Volume.
> - On the EC2 Elastic Block Store Volumes menu, select the new volume.
> - Choose Actions, and then choose Attach Volume.
> - Select the instance that you want to attach the volume to, and use the same device name that you noted earlier (e.g. /dev/sda1).


## Encryption by Default

*   [EBS Encryption by Default](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default)

This page has easy to follow step-by-step examples of how to enable storage encryption on your account.

> 1.  Open the Amazon EC2 console at <https://console.aws.amazon.com/ec2/>.
> 
> 2.  From the navigation bar, select the Region.
> 
> 3.  From the navigation pane, select EC2 Dashboard.
> 
> 4.  In the upper-right corner of the page, choose Account Attributes, EBS encryption.
> 
> 5.  Choose Manage.
> 
> 6.  Select Enable. You keep the AWS managed key with the alias alias/aws/ebs created on your behalf as the default encryption key, or choose a symmetric customer managed encryption key.
> 
> 7.  Choose Update EBS encryption.

It's worth noting the default AWS managed key here you can generate for default encryption falls under the free tier (\$0.00 per request - Monthly Global Free Tier for KMS requests).

Confirm this in the billing menu of your account under `Bills > Key Management Service`.

You can provide your own encryption keys (\$1/mo/key). From the console search for Key Management Service (KMS).

Here you'll find the AWS managed keys (if you followed along with enabling encryption by default in the previous steps).

As well as Customer managed keys (e.g. keys you provide for AWS to use when encrypting data symmetrically).


## KMS (Key Management Service)

You'll want to create your own keys to encrypt and protect your virutal machine snapshots at rest while they're on AWS's servers.

In the event of a breach, you data is useless to an attacker.

Single-region Symmetric keys are recommended for individuals in this case.

Multi-region keys count as a separate key in each region (\$1/region).

*   <https://docs.aws.amazon.com/kms/latest/developerguide/key-types.html#symm-asymm-choose>

When granting permisions, your 'root' user will automatically have access.

For a single user accessing Teradici for a cloud desktop, you'll be using the `admin` IAM role you created. It's OK to permit this IAM entity access to this key's operations.


## UEFI Secure Boot

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/launch-instance-with-uefi-sb.html

https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/launch-instance-with-uefi-sb.html


## AWS CLI

<https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html>

### Install Instructions

1.  Download the archive and `gpg` signature:

*   <https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html>

```bash
curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip' -o "awscliv2.zip"
curl 'https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig' -o "awscliv2.sig"
```

1.  Obtain the AWS GPG public key

*   <https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#install-linux-verify>

```
-----BEGIN PGP PUBLIC KEY BLOCK-----

mQINBF2Cr7UBEADJZHcgusOJl7ENSyumXh85z0TRV0xJorM2B/JL0kHOyigQluUG
ZMLhENaG0bYatdrKP+3H91lvK050pXwnO/R7fB/FSTouki4ciIx5OuLlnJZIxSzx
PqGl0mkxImLNbGWoi6Lto0LYxqHN2iQtzlwTVmq9733zd3XfcXrZ3+LblHAgEt5G
TfNxEKJ8soPLyWmwDH6HWCnjZ/aIQRBTIQ05uVeEoYxSh6wOai7ss/KveoSNBbYz
gbdzoqI2Y8cgH2nbfgp3DSasaLZEdCSsIsK1u05CinE7k2qZ7KgKAUIcT/cR/grk
C6VwsnDU0OUCideXcQ8WeHutqvgZH1JgKDbznoIzeQHJD238GEu+eKhRHcz8/jeG
94zkcgJOz3KbZGYMiTh277Fvj9zzvZsbMBCedV1BTg3TqgvdX4bdkhf5cH+7NtWO
lrFj6UwAsGukBTAOxC0l/dnSmZhJ7Z1KmEWilro/gOrjtOxqRQutlIqG22TaqoPG
fYVN+en3Zwbt97kcgZDwqbuykNt64oZWc4XKCa3mprEGC3IbJTBFqglXmZ7l9ywG
EEUJYOlb2XrSuPWml39beWdKM8kzr1OjnlOm6+lpTRCBfo0wa9F8YZRhHPAkwKkX
XDeOGpWRj4ohOx0d2GWkyV5xyN14p2tQOCdOODmz80yUTgRpPVQUtOEhXQARAQAB
tCFBV1MgQ0xJIFRlYW0gPGF3cy1jbGlAYW1hem9uLmNvbT6JAlQEEwEIAD4WIQT7
Xbd/1cEYuAURraimMQrMRnJHXAUCXYKvtQIbAwUJB4TOAAULCQgHAgYVCgkICwIE
FgIDAQIeAQIXgAAKCRCmMQrMRnJHXJIXEAChLUIkg80uPUkGjE3jejvQSA1aWuAM
yzy6fdpdlRUz6M6nmsUhOExjVIvibEJpzK5mhuSZ4lb0vJ2ZUPgCv4zs2nBd7BGJ
MxKiWgBReGvTdqZ0SzyYH4PYCJSE732x/Fw9hfnh1dMTXNcrQXzwOmmFNNegG0Ox
au+VnpcR5Kz3smiTrIwZbRudo1ijhCYPQ7t5CMp9kjC6bObvy1hSIg2xNbMAN/Do
ikebAl36uA6Y/Uczjj3GxZW4ZWeFirMidKbtqvUz2y0UFszobjiBSqZZHCreC34B
hw9bFNpuWC/0SrXgohdsc6vK50pDGdV5kM2qo9tMQ/izsAwTh/d/GzZv8H4lV9eO
tEis+EpR497PaxKKh9tJf0N6Q1YLRHof5xePZtOIlS3gfvsH5hXA3HJ9yIxb8T0H
QYmVr3aIUes20i6meI3fuV36VFupwfrTKaL7VXnsrK2fq5cRvyJLNzXucg0WAjPF
RrAGLzY7nP1xeg1a0aeP+pdsqjqlPJom8OCWc1+6DWbg0jsC74WoesAqgBItODMB
rsal1y/q+bPzpsnWjzHV8+1/EtZmSc8ZUGSJOPkfC7hObnfkl18h+1QtKTjZme4d
H17gsBJr+opwJw/Zio2LMjQBOqlm3K1A4zFTh7wBC7He6KPQea1p2XAMgtvATtNe
YLZATHZKTJyiqA==
=vYOk
-----END PGP PUBLIC KEY BLOCK-----
```

Key information for reference:
```
Key ID:           A6310ACC4672
Type:             RSA
Size:             4096/4096
Created:          2019-09-18
Expires:          2023-09-17
User ID:          AWS CLI Team <aws-cli@amazon.com>
Key fingerprint:  FB5D B77F D5C1 18B8 0511  ADA8 A631 0ACC 4672 475C
```

1.  Verify, unzip and install

```bash
gpg --verify awscliv2.sig awscliv2.zip || exit

unzip awscliv2.zip
sudo ./aws/install
```

### Prerequisites

<https://docs.aws.amazon.com/cli/latest/userguide/getting-started-prereqs.html>

> 1. Sign up for AWS
> 
> 2. Create an IAM user account (a separate user with a more narrow scope of capabilities than the 'root' account)
> 
> 3. Create an access key ID and secret access key

#### 1) Sign Up for AWS

It's assumed you've already done this.

#### 2) IAM user creation

Steps: <https://docs.aws.amazon.com/cli/latest/userguide/getting-started-prereqs.html>

**To create access keys for an IAM user**:

> 1. Sign in to the AWS Management Console and open the IAM console at https://console.aws.amazon.com/iam/.
> 
> 2. In the navigation pane, choose Users.
> 
> 3. Choose the name of the user whose access keys you want to create, and then choose the Security credentials tab.
> 
> 4. In the Access keys section, choose Create access key.
> 
> 5. To view the new access key pair, choose Show. You will not have access to the secret access key again after this dialog box closes. Your credentials will look something like this:
> 
> 	* Access key ID: AKIAIOSFODNN7EXAMPLE
> 
> 	* Secret access key: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
> 
> 6. To download the key pair, choose Download .csv file. Store the keys in a secure location. You will not have access to the secret access key again after this dialog box closes.
> 
> Keep the keys confidential in order to protect your AWS account and never email them. Do not share them outside your organization, even if an inquiry appears to come from AWS or Amazon.com. No one who legitimately represents Amazon will ever ask you for your secret key.
> 
> 7. After you download the .csv file, choose Close. When you create an access key, the key pair is active by default, and you can use the pair right away.

#### 3) Grant User Billing Access

Steps: <https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_billing.html>

[Recommended] assign MFA to this IAM account like you would your root account.

These keys are separate from your IAM account's password and MFA token.

They are meant to be ephemeral and easy to rotate. They essentially are tokens to sign programmatic requests, and are potentially easier to compromise as they must exist unencrypted somewhere.

You can see how revoking and creating a new token that has limited capability is less devistating than your real login details being compromised.
