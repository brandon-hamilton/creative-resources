# Automation

Techniques to give you more time to design and create.

## Color / B&W Image to Line Art Automation

![](/media/ps-filters-lineart-001.gif)

The idea here is this method will do 90% of the work. Any artist with good foundational 2D skills will be able to take the result to a finished presentable state.

The difference is this consumes much less time than manually drawing.

#### Photoshop
- These settings work well with HD / 4K resolution
- `Filters > Filter Gallery > Sketch > Photocopy, Darkness: 8, Detail: 4;`
- `Edit > Stroke > Width: 2px, Location: Center, OK`
- If the layer exceeds the boundaries of those dimensions (the canvas) you may need more or less detail
- You'll want to run the filter so it's loaded as the last filter used
- `Ctrl+z`, adjust the size of the layer, and run the filter again to see what's working
- Use a hotkey to quickly reapply the last filter used

#### GIMP
- Filters > Artistic > Photocopy
- Stroke (need steps)

#### Corel
- [missing/needed]

Generally all Photocopy filters produce the same effect. Use the `Median` filter, or your program's equivalent if the lines need smoothed.

---

## Generate a Color Palette from an Image

If there's an image  with a color palette you like, you can quickly generate a usable palette with the following:

Photoshop:

- Open the image
- Use `Filter > Pixelate > Mosaic` and increase the pixel size by eye (you'll know when you have it right)
- Save this as a PNG in a directory that makes sense
	* e.g. a folder for a set of images if it's for a specific scene
	* e.g. the project root if the entire job requires adherence to a single color palette
