# Sequential Art

## Template Creation

"How do I make a presentation template when working with sequential images in just Photoshop?"

- We cannot (or don't want to) rely on Indesign or any additional software
- We need layers to drop in and update in real time (Linking) similar to Indesign's Place / Link + Fit Content Proportionally


### How To

You'll want to start by making this template blank, and unrelated to any current work. 

- Name it something like `Template.psd`
- Store it separately from any specific project folder
- Use personal work or example images to test the template
	- If this is a template you use for future jobs, you don't want any real client work appearing in the PSD document history

Setup your files with the following:

- A single template PSD, such as `CLIENT_JOB_ASSETNAME_ALL.psd`
- Individual frames as PSDs, such as `CLIENT_JOB_ASSETNAME_F001.psd`
- These can all be in the same folder, named "Working_Files" for example
- The idea is you have a `Working_Folder` for PSDs, and a `Shared_Folder` where you export PNGs and PDFs

*Do not append dates or modify the naming convention of these files, their file path must remain the same or it will break the link.*

This way, when you rearrange frames, for example frame 6 becomes frame 20, a "CLIENT_JOB_ASSETNAME_F020.psd" and a "CLIENT_JOB_ASSETNAME_F006.psd" will always exist, it's just their names have been changed. Photoshop reads them and updates their content in the linked file.

This is because Photoshop doesn't understand if the same files had their naming convention changed, it will simply be looking for the same file path to update linked content. If you need file versions maintained based on dates or any other reason, create a separate folder such as `YEAR.MONTH.DAY` and copy the required files into that folder. This eats more disk space but is necessary if this is a requirement for your project.

When creating your template layout:

- This unfortunately will be fairly static in Photoshop
- However, by leveraging smart objects and text layers, you can reconstruct templates quickly
- Choose a vertical (8.5x11) or horizontal (16:9) layout for the pages
- Space frames out accordingly
	- 4x3 works well for horizontal layouts
	- 3x5 works well for vertical layouts
	- This all depends on your document needs

For easier formatting:

- Ensure View > Show > Smart Guides are on to make formatting your template easier
- Enable View > Snap
- View > Snap To > Grid / Layers / Slices

For quicker tool usage map these hotkeys:

- Ctrl+Shift+C: Layer > Smart Objects > Convert to Smart Object
- Ctrl+Shift+D: Layer > Smart Objects > New Smart Object via Copy...
- Ctrl+Shift+R: Layer > Smart Objects > Relink to File...

To link individual PSD files to a template:

- Create a placeholder for an individual frame as a layer with a 16:9 blank shape
- Layer > Smart Objects > Convert to Smart Object (the blank 16:9 layer)
- Layer > Smart Objects > New Smart Object via Copy... instead of Ctrl+j to make more layers
	- Otherwise when you link a file to the smart object it's reflected in every "duplicate" layer

*Photoshop also has no "Apply Numbered List to Frames" equivalent, so how can we work around that?*

- Create a text layer for "1", adhere it relative to a frame layer where you'd like it to be (top left of frame)
	- If you do this while you're creating all of your smart object frames, you can move the frame + number text layer together
	- Alternatively Using Ctrl+j and the "View > Snap / Snap To" capability, to quickly duplicate and move text layers if you made all your frame placeholders without numbers first
- Add all text layers to a single group for frame numbers
- Manually update each of them to be the correct number
- If you need additional "pages", Shift+Click and Ctrl+j to duplicate your text layers, and use `New Smart Object via Copy...` to make more frames
- The idea is you do this once for this template and it's done. You will rarely go past a certain number of frames

- When you're ready to drop individual PSD frames into place, select the desired layer and perform Layer > Smart Objects > Relink to File...
- Choose the file, it's imported as a smart object and the layer automatically renamed to the filename (this saves a ton of time organizing layers)

*The issue is Photoshop has no Indesign equivalent of "Object > Fitting > Fit Content Proportionally" to automate this. Fortunately, we can make this easy to do.*

- Ctrl+t to Transform, adjust the scale % in the `menu bar` (W + H should scale together) until the image content adheres to the frame template
	- This works because the newly linked frame, while larger than the template, is centered horizontally and vertically above the smart object it replaced
	- Scaling prevents the need for any manual transforming of the layer shape by hand
- Once you find the exact percentage, you can apply it to every subsequent frame without manually transforming it
- Further automate this by turning the scale % into an Action, now you just click the "play" button on each image layer after linking a file

This template structure will update all of the frames directly within the template in real time as you work on the source PSDs for each individual frame.


### Sequential Art Layers

Example layer structure, in this case for line art with color.

```
# Grouped Frames
Group/Character
	|_Line Art -> Set layer mode to multiply
	|_Color
Group/Background
	|_Line Art -> Set layer mode to multiply
	|_Color
etc...
```
