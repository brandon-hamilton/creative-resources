# Pixel Art

## Generate Pixel Art

This is not a complete end to end solution, but this technique *should* open doors and get your wheels spinning.

Using any raster / photo image:

1. `Image > Image Size`, change images size by percent from 100% to 10%
2. Set `Resample` to `Nearest Neighbor (hard edges)`
3. `OK`
4. `Image > Image Size`, change images size by percent to 200%
	* Leave the `Resample` to `Nearest Neighbor (hard edges)`
	* Do this incrementally until the image is the size you want to view it at

This should serve as a quick introduction to what's possible with pixel art by manipulating image sizes.

## Managing Layers for Animation

This section includes Krita as part of the workflow. This is optional, however:

- `Photoshop` > `[Select/highlight all layers]` > `Layer` > `Export As...` > `PNG files`
- `Photoshop` > `Scripts` > `Load files into Stack...` > `Select PNG Files`

- `Krita` > `Import Animation Frames` > `Select PNG Files`
- `Krita` > `Render Animation` > `Images` > `PNG Files`

Photoshop's Export As function crops the pngs down to the **largest visible sprite**.

Krita's Render Animation maintains the **overall canvas pixel dimensions** for each sprite.

Quality wise both exported PNG sprites are exactly the same.
