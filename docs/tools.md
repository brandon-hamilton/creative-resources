# Tools

This sections provides a direct link to the official website or source of the tool, a brief description, links to documentation, install instructions, and any tips or notes useful to getting started.

It exists partially as a quick reference, and also to help prevent downloading legitimate tools from illegitimate mirrors.

Learn how to [validate and verify data integrity](/verify-data-integrity.md) for more.

---

### 2D

#### Adobe / Creative Cloud

- <https://www.adobe.com/creativecloud.html>
- Summary: Adobe's software and service suite
- Install instructions: <https://helpx.adobe.com/download-install/kb/creative-cloud-desktop-app-download.html>

Obtain the latest signed binary directly from Adobe programmatically:

```bash
# Latest macOS / Apple M1
curl -LfO 'https://ccmdl.adobe.com/AdobeProducts/KCCC/CCD/5_7_1/macarm64/ACCCx5_7_1_1.dmg'

# Latest Windows 10/11 x64
$ProgressPreference = "SilentlyContinue"
Invoke-WebRequest -Uri "https://ccmdl.adobe.com/AdobeProducts/KCCC/CCD/5_7_1/win64/ACCCx5_7_1_1.zip" -OutFile "C:\Windows\Temp\ACCC_latest.zip"
Expand-Archive -Path "C:\Windows\Temp\ACCC_latest.zip" -DestinationPath "C:\Your\Destination\Path"
& 'C:\Your\Destination\Path\Set-up.exe'
```

##### Photoshop

- <https://www.adobe.com/products/photoshop.html>
- Summary: 2D graphics editor
- Install instructions: <https://helpx.adobe.com/support/photoshop.html>
- Documentation: <https://helpx.adobe.com/support/photoshop.html>

##### Illustrator

- <https://www.adobe.com/products/illustrator.html>
- Summary: vector gaphics editor
- Install Instructions: <https://helpx.adobe.com/support/illustrator.html>
- Documentation: <https://helpx.adobe.com/support/illustrator.html>

#### GIMP

- <https://www.gimp.org/>
- Summary: 2D graphics editor
- Install Instructions: <https://www.gimp.org/downloads/>
- Documentation: <https://www.gimp.org/docs/>

- Resynthesizer (texture, style transfer)
- Install Instructions: <https://github.com/bootchk/resynthesizer/wiki/Install-Resynthesizer>
- Documentation: <https://github.com/bootchk/resynthesizer/wiki/Quick-user's-guide-to-the-Resynthesizer-plugins-for-GIMP>

#### Krita

- <https://krita.org/>
- Summary: 2D painting program
- Download: <https://krita.org/en/download/krita-desktop/>
- Install Instructions: <https://docs.krita.org/en/user_manual/getting_started/installation.html>
- Documentation: <https://docs.krita.org/en/>

#### Inkscape

- <https://inkscape.org/>
- Summary: vector graphics editor
- Install Instructions: <https://inkscape-manuals.readthedocs.io/en/latest/installing-on-windows.html>
- Install Instructions: <https://inkscape-manuals.readthedocs.io/en/latest/installing-on-mac.html>
- Install Instructions: <https://inkscape-manuals.readthedocs.io/en/latest/installing-on-linux.html>
- Documentation: <https://inkscape.org/learn/>
- Documentation: <https://inkscape-manuals.readthedocs.io/en/latest/index.html>

#### Topaz Studio

- <https://topazlabs.com/studio/>
- Summary: automate painting & artistic style matching with machine learning

#### Topaz Gigapixel

- <https://topazlabs.com/gigapixel-ai>
- Summary: upscales images accurately using machine learning

---

### 3D

#### Blender

- <https://www.blender.org/>
- Summary: complete 3D modeling, animation, and 3D drawing suite
- Install Instructions: <https://docs.blender.org/manual/en/latest/getting_started/installing/index.html>
- Documentation: <https://www.blender.org/support/>

#### Marmoset Toolbag

- <https://marmoset.co/>
- Summary: real-time rendering, texturing, and baking tools

#### Substance 3D Painter

- <https://www.adobe.com/products/substance3d-painter.html>

#### Houdini

- <https://www.sidefx.com/products/houdini/>
- Summary: procedural visual effects creation

#### Daz 3D

- <https://www.daz3d.com/>
- Summary: software + storefront offering rigged 3D character, prop, environment assets, export to various formats

#### Marvelous Designer

- <https://marvelousdesigner.com/>
- Summary: realistic cloth and clothing creation, make complex and reusable 3D clothing
- Summary: <https://marvelousdesigner.com/product/overview>

#### Maya

- <https://www.autodesk.com/products/maya/overview>

#### Fusion 360

- <https://www.autodesk.com/products/fusion-360/overview>
- Summary: cloud-based, CAD product design software (good for hard surface modeling)

#### Zbrush

- <https://store.pixologic.com/>
- Summary: complete 3D sculpting solution

#### Keyshot

- <https://www.keyshot.com/>
- Summary: GPU / CPU rendering and animation

#### OctaneRender

- <https://home.otoy.com/render/octane-render/>
- Summary: NVIDIA CUDA-enabled GPU rendering software

#### Character Creator

- <https://www.reallusion.com/character-creator/>
- Summary: clearinghouse for 3D character design, creation, animation, and export
- Install Instructions: <https://kb.reallusion.com/General/50021/How-can-I-redownload-the-program-if-I-lost-the-installer>
- License: one-time, perpetual license

#### iClone (Animation)

- <https://www.reallusion.com/iclone/>
- Summary: real-time 3D animation, exports to various formats
- Install Instructions: <https://kb.reallusion.com/General/50021/How-can-I-redownload-the-program-if-I-lost-the-installer>
- License: one-time, perpetual license

---

### Game Engines

#### Unreal Engine

- <https://www.unrealengine.com/>

#### Unity Engine

- <https://unity.com/>

#### Godot Engine

- <https://godotengine.org/>
- License: [MIT](https://github.com/godotengine/godot/blob/master/LICENSE.txt)

---

### Assets

#### photobash.co

- <https://www.photobash.co/>
- Summary: library of paid photo and 3D kit assets (royalty free)

#### location textures

- <https://locationtextures.com/>
- Summary: library of paid photo assets and HDR's (royalty free)

#### poliigon

- <https://www.poliigon.com/>
- Summary: 3D assets, shaders, materials, (subscription or per asset fee)

#### turbosquid

- <https://www.turbosquid.com/>
- Summary: stock 3D models (revenue based license)

#### Arstation

- <https://www.artstation.com/marketplace/game-dev>
- Summary: has marketplace where creators sell assets and tutorials for all programs and formats

#### Gumroad

- <https://gumroad.com/>
- Summary: marketplace where creators sell assets and tutorials for all programs and formats

#### JRO Tools

- <https://www.artstation.com/jronn/store>
- <https://gumroad.com/environmentdesign>
- Summary: various kitbash + photobash assets and tutorials

#### Quick Texture

- <https://jamajurabaev.gumroad.com/l/CRbkx>
- Summary: Blender add-on for automating and streamlining texture workflows

#### Quick Assembly

- <https://jamajurabaev.gumroad.com/l/bnmmq>
- Summary: Blender add-on for automating working with geometry nodes + instances

#### Gaëlle Seguillon

- <https://www.artstation.com/gaelleseguillon/store>
- <https://gaelleseguillon.gumroad.com/>
- Summary: Matte painting texture packs

#### pexels

- <https://www.pexels.com/>
- License: <https://www.pexels.com/license>
- Summary: library of free to use imagery by artists, released under the permissive pexels license

#### unsplash

- <https://unsplash.com/>
- License: <https://unsplash.com/license>
- Summary: library of free to use imagery by artists, released under the permissive unsplash license
- <https://github.com/unsplash>

#### pixabay

- <https://pixabay.com/>
- License: <https://pixabay.com/service/terms/>
- Summary: library of free to use imagery by artists, released under the permissive pixabay license

---

### Video

#### Adobe / Creative Cloud

##### Premiere

- <https://www.adobe.com/products/premiere.html>
- Install Instructions: <https://helpx.adobe.com/support/premiere-pro.html>
- Documentation: <https://helpx.adobe.com/support/premiere-pro.html>

#### Blender

- <https://www.blender.org/>
- Summary: complete 3D modeling, animation, and 3D drawing suite
- Install Instructions: <https://docs.blender.org/manual/en/latest/getting_started/installing/index.html>
- Documentation: <https://www.blender.org/support/>

#### DaVinci Resolve

- <https://www.blackmagicdesign.com/products/davinciresolve/>
- Summary: full video and audio editing + post production suite

#### EbSynth

- <https://ebsynth.com/>
- <https://ebsynth.com/faq.html>
- Summary: image synthesis (style, texture, content) for video

#### OBS Studio

- <https://obsproject.com/>
- <https://github.com/obsproject/obs-studio>
- License: GPL-2.0
- Summary: streaming, broadcasting, and recording software (video + audio + screen)

---

### AI

#### Midjourney

- Public Beta: <https://discord.gg/midjourney>
- <https://twitter.com/midjourney>
- <https://github.com/midjourney/docs>
- <https://midjourney.gitbook.io/docs>
- <https://www.midjourney.com/app/>
- Summary: text to image automation via Discord bot, commercial subscription plans available
- [Licensing for Commercial Use](https://midjourney.gitbook.io/docs/billing#commercial-terms)

#### DALL-E 2

- <https://openai.com/dall-e-2/>
- Summary: text to image automation
- [Licensing for Commercial Use](https://labs.openai.com/policies/terms)

#### synthesia

- <https://www.synthesia.io>
- Summary: ai video generation

#### Nvida AI Research

- <https://www.nvidia.com/en-us/research/ai-playground/>
- Summary: demos of automation in image generation

#### Stable Diffusion

- <https://stability.ai/>
- <https://twitter.com/stabilityai>
- <https://stability.ai/blog/stable-diffusion-public-release>
- [DreamStudio](https://beta.dreamstudio.ai/), a paid web application using Stable Diffusion
		- [Images created in DreamStudio fall under the CC0 1.0 (Public Domain)](https://stability.ai/faq)
- Summary: text to image automation

---

### Credential Management

Protect all of your credentials with a [strong passphrase](https://www.cisa.gov/tips/st04-002), and [MFA](https://www.cisa.gov/mfa)

#### 1Password

- <https://1password.com/>

#### Bitwarden

- <https://bitwarden.com/>

#### KeePassXC

- <https://keepassxc.org/>

- iOS: StrongBox
	- <https://strongboxsafe.com/>
	- <https://apps.apple.com/us/app/strongbox-keepass-pwsafe/id897283731>

- Android: Keepass2Android
	- <https://github.com/PhilippC/keepass2android>
	- <https://play.google.com/store/apps/details?id=keepass2android.keepass2android>

#### LastPass

- <https://www.lastpass.com/>

---

### Note Taking

#### OneNote

- <https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app>
- Summary: Full featured note taking, tags, sharing, rich text, cross platform

#### StandardNotes

- <https://standardnotes.com/>
- Summary: End to end encrypted notes, cross platform

#### Figma

- <https://www.figma.com/>
- Summary: Complete design process & collaboration toolkit

#### CherryTree

- <https://www.giuspen.com/cherrytree/>
- <https://github.com/giuspen/cherrytree>
- Summary: Hierarchical note taking application, rich text, syntax highlighting

#### Joplin

- <https://github.com/laurent22/joplin>
- Summary: Markdown-rendered note taking, hierarchical, tags, cross-platform sync options

#### Obsidian

- <https://obsidian.md/>
- Summary: Hierarchical note taking in Markdown, has various graph views to connect notes

#### Greenshot

- <https://github.com/greenshot/greenshot>
- <https://getgreenshot.org/downloads/>
- Summary: Robust screenshot tool for Windows (and macOS)

#### Flameshot

- <https://github.com/flameshot-org/flameshot>
- Summary: Robust screenshot tool for Linux

#### Snipping Tool

- <https://support.microsoft.com/en-us/windows/use-snipping-tool-to-capture-screenshots-00246869-1843-655f-f220-97299b865f6b>
- Summary: Built-in to Windows (will be removed)

#### GNOME Screenshot

- <https://download.gnome.org/sources/gnome-screenshot/>
- Summary: Built-in to many Linux distributions running GNOME

---

### File Transfer Protocols

Common file transfer web applications. Links point to the business or paid version of each service.

#### Google Drive

- <https://workspace.google.com/intl/en/products/drive/>

#### Dropbox

- <https://www.dropbox.com/pro>

#### Box

- <https://www.box.com/pricing/individual>

#### OneDrive / Sharepoint

- <https://www.microsoft.com/en-us/microsoft-365/onedrive/onedrive-for-business>
- <https://www.microsoft.com/en-us/microsoft-365/sharepoint/collaboration>
- NOTE: Microsoft Teams uses Sharepoint as it's backend fileshare service.

#### Tresorit

- <https://tresorit.com/individuals>
- Free option: <https://send.tresorit.com/>

#### Wiredrive

- <https://www.wiredrive.com/>

#### Egnyte

- <https://www.egnyte.com/>

#### Simian

- <https://www.gosimian.com/>

#### WeTransfer

- <https://wetransfer.com/pricing>

---

## Code Repositories

- CycleGAN (automate style matching)
	- <https://github.com/junyanz/CycleGAN>

- stylegan (automate face generation)
	- <https://github.com/NVlabs/stylegan>

- stylegan2-ada (refactoring of stylegan)
	- <https://github.com/NVlabs/stylegan2-ada>

- stable-diffusion
	- <https://github.com/CompVis/stable-diffusion>

- Teradici Deployment Scripts
	- <https://github.com/teradici/cloud_deployment_scripts>

- SPADE (automate image creation)
	- <https://github.com/NVlabs/SPADE>

- DALL-E (VAE-only component of DALL-E)
	- <https://github.com/openai/DALL-E>

- ebsynth (image synthesizer)
	- <https://github.com/jamriska/ebsynth>
	- Example usage of ebsynth for animation (Joel Haver): <https://www.youtube.com/watch?v=tq_KOmXyVDo>

- GDQuest (tutorials, art, Godot Engine)
	- <https://github.com/GDquest>

- unsplash (dataset repo)
	- <https://github.com/unsplash>

- hypVR-Ray (hyperbolic VR using raymarching)
	- <https://github.com/mtwoodard/hypVR-Ray>

- Adobe Photoshop Scripting Guide
	- <https://github.com/Adobe-CEP/CEP-Resources/tree/master/Documentation/Product%20specific%20Documentation/Photoshop%20Scripting>

