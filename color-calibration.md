# Color Calibration

General overview and how-to from Adobe on color calibration:

- https://www.adobe.com/creativecloud/video/discover/how-to-calibrate-monitor.html
	* https://helpx.adobe.com/premiere-pro/how-to/lumetri-color-overview.html

Hardware + software mentioned in the Adobe article above (needs reviewed + tested):

- https://spyderx.datacolor.com/
- https://www.xrite.com/categories/calibration-profiling
	* https://calibrite.com/us

The following post is an older nvidia article (from 2015) on monitor calibration:

- https://www.nvidia.com/en-us/geforce/news/how-to-calibrate-your-monitor/
	* [Lagom's Test Image Suite](https://web.archive.org/web/20220605113731/http://www.lagom.nl/lcd-test/)

The archived link from the nvidia article above has a set of images to help you review and adjust monitor calibration. The tests are subjective based on your eyes, monitor, and local lighting conditions.

---

## Color Calibration (Linux Host)

Some settings will require restarting applications or logging out / in before the changes take effect.

**NVIDIA**

If you have an nvidia graphics card use the NVIDIA Settings package (`nvidia-settings` in apt)

- `X Server Display Configuration` > `[Display]`
	* Resolution
	* Refresh > `60hz` or more
	* other options...
- `OpenGL Settings` > `Image Settings` > `High Quality`
- `Antialiasing Settings` > Off
- `HDMI-(<dispaly-name>)` > `Controls`
	* Color Space
	* Color Range
	* Dithering Controls > Auto
	* Digital Vibrance
	* Image Sharpening
- `HDMI-(<dispaly-name>)` > `Color Correction`
	* Brightness
	* Contrast
	* Gamma

**Integrated / CPU Graphics**

If you have and nvidia card, or your system uses integrated graphics, use `Settings > Displays` to make configurations.

- [GNOME Display Settings](https://help.gnome.org/users/gnome-help/stable/prefs-display.html.en)
	* [System76 - HiDPI with Multi-Monitor Support](https://support.system76.com/articles/hidpi-multi-monitor/)
- [xfce Display Settings](https://docs.xfce.org/xfce/xfce4-settings/display)
	* [Kali - HiDPI](https://www.kali.org/docs/general-use/hidpi/)
	* [Kali - Fixing HiDPI Issues](https://www.kali.org/docs/general-use/fixing-dpi/)

#### External Monitors

- Check that each monitor is set to it's native resolution in the display settings
- Check that [HiDPI](https://medium.com/elementaryos/what-is-hidpi-and-why-does-it-matter-b024eabea20d) is enabled on your system
- Turn off `Fractional Scaling` if it's enabled under `Settings > Displays`
- Set each display to `100%` Scale

From here you will need to check your external display's documentation.

The external display may automatically adjust defaults away from values you have previously set based on what device it thinks it's connected to.

In any case, review all of the external display's settings when troubleshooting.

One common issue is the external display will switch away from the 'HDR' mode (or it's brand equivalent) to a 'Game' mode. In this mode the display is blurry, contrast will be too strong, and color will be oversaturated.
