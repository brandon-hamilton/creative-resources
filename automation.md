# Automation

Techniques to give you more time to design and create.

## DALL-E 2

[DALL-E 2](https://openai.com/dall-e-2/) (currently in beta) is an AI powered image generation platform created by OpenAI.

### Prompts

The way to generate images in DALL-E 2 is with text-based prompts, for example:

```dall-e
a photo of a frog dressed as a ship captain sailing a boat during a storm, close up, portrait, digtial art
```

I've found you can append useful 'keywords' to any 'query'. Similarly you can 'chain' queries to create a specific image.

The queries and keywords can be in any order really.

Based on the examples shown below the prompt on DALL-E's web interface:

- Separating 'keywords' with `,` commas may help.
- Wrapping strings of text in quotes, like `"<query>"` may also help.

For example:

```dall-e
"a photo of a concerned frog, dressed as an astronaut, sailing a space boat during a solar storm", synthwave, wide angle, 3/4 view, depth of field, digital art
```

Example list of `keywords` that can modify the resulting image:

- `wide angle`, `close up`, `medium angle`
- `3/4 view`
- `macro lens`, `35mm`
- `depth of field`, `motion blur`
- `a photo of <query>`
- `bird's eye view`
- `4k`
- `3D`, `2D`, `CGI`
- `concept art`, `matte painting`, `digital art`, `line art`, `drawing`, `pixel art`, `comic`, `storyboard`, `sketch`, `photo`
- `by <artist-name>`
- `in style of <style>`
- `cyberpunk`, `vaporwave`, `synthwave`, `neon`, `medieval`, `glitch`, `fractal`
- `nighttime`, `daytime`, `rain`, `snow`, `wind`, `sun`, `fall`, `winter`, `overcast`

For more examples on ways to construct a prompt, be sure to check the DALL-E 2 Discord top-tips-and-tricks channel.

### Editing

DALL-E 2 lets you `edit` an image directly from the web interface. By masking out parts that you'd like to change, it can reiterate on the same image based on the prompt for different results.

The prompt should describe the **entire image** not just the elements you're trying to change.

The next section demonstrates this process.

### Fixing Cropped Results

Some results will have what you're looking for, but are cropped in a strange way that might obscure part of the subject.

![](/media/automation-dall-e-2-001.png)

You can resolve this in a few ways:

- Download and open the image in an external editor (e.g. [GIMP](https://www.gimp.org/))
- Move or scale the image while maintaining the 1024x1024 canvas size
- This leaves transparency where you need further image content generated

![](/media/automation-dall-e-2-002.png)

- Upload the image to DALL-E 2
- At 'Select a square area to edit' four dots in the corners of the image can be moved to resize the image area
- Leave this square as is to use the entire image
- Choose `Edit image`
- Target the blank space by `erasing` an area within the transparency
- You only need to 'click' in a transparent space once with the 'eraser' tool in DALL-E's editor

For example, clicking where the red circle is will be enough for DALL-E 2 to know it needs to target the transparency:

**TIP**: if you receive an error about nothing being erased, click in the transparency once more and try generating again.

![](/media/automation-dall-e-2-003.png)

DALL-E 2 will then generate the missing information.

![](/media/automation-dall-e-2-004.png)

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
