# Buying Equipment

[ArtStation Magazine - Guide to buying a laptop for content creation](https://magazine.artstation.com/2021/12/a-guide-to-buy-the-perfect-laptop-for-content-creation/)

The artstation guide above is the best overview you'll find. 

---

The following section will have details on individual devices or components.

## UEFI / Firmware

Before making any purchase, review the manufacturer's documentation on configuring and updating your device's firmware.

It's a good idea to check on the manufacturer's website for how freqently the firmware receives updates, if it's signed, and how to obtain and apply the firmware update(s).

Additionally, if possible:

- Uses UEFI and not legacy BIOS
- UEFI networking stack can be disabled
- Firmware write protections can be enabled
- Boot password

---

## Display / Monitor

TO DO

---

## Tablet / Pen

TO DO

---

## CPU / Processor

TO DO

---

## RAM / Memory

#### ECC Memory

- https://en.wikipedia.org/wiki/ECC_memory

Error correction code memory detects and corrects data corruption in memory.

This has a performance cost of a few %

Critical for virtualization, infrastructure, data processing

---

## GPU / Graphics Processor

TO DO

---

## NIC / Network Interface Card

TO DO

---

## Storage

TO DO

- calculating disk-write life expectancy

---

## Testing Usability

Guidance on hardware resource requirements

### 2D Baseline

- 3x 2560x1440@72dpi images open in Photoshop, 10-20 layers, actively editing
- Slack / Discord open
- Gmail browser tab open
- Screen sharing on Zoom / MS Teams

Other Considerations:

- Additional creative tools not in use at all times, such as an external editor or a Photoshop plugin
- There may be more than just a single browser tab of Gmail open
- USB hub power draw and performance can very
	* Some devices need to be directly connected to the computer to function properly

**NOTE**: A default install of Windows 10 / 11 with Chrome / Edge open can consume up to 4 GB of RAM while idle. 16GB of total RAM will be too low in most cases.

### Minimum Recommended Specs:


- `6 Core CPU, 12 Threads`
	* Provides enough 'lanes' in the 'highway' to juggle necessary tasks
- `32GB RAM`
	* Provides the 'space' for the applications or data to 'exist' while in use
- `4GB GPU`
	* Allows leveraging GPU acceleration (but not enough for GPU-centric workloads)
- `3x USB-A Ports`
	* Wacom + Mic + Camera
		- The builtin camera / microphone may not work as well as external hardware
	* Wacom + Mouse & Keybaord
	* Wacom + External Drives
- `2x 1TB+ SSD, read/write 500MB/s+`
	* Solid-state drives survive movements of a laptop
	* Read / write speed is important when:
		- Booting the OS
		- Copying files
		- Moving files
	* 1TB of space is just enough to get started
	* One SSD will contain the OS
		- Windows itself can require around 20-50GB of space or more on average
