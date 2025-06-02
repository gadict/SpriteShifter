https://godotengine.org/license/

Reasonable questions:
- What is this tool?
    - A simple batch editor for sprites that allows one to quickly change the canvas size and offsets, as well as flip the sprite along both axes.

- How do I use it?
    - Compile in Godot normally, there are no other dependencies.
    -  Load the sprites you would like to edit from the file menu, then use the menu on the right to apply changes to the currently selected sprite.
    -  You can save the currently selected sprite individually, or apply and save the current settings to every sprite you have loaded. It saves in-place, so it might be wise to keep a backup.
    -  The program does keep a copy of the original image in memory until you clear the sprites in the file menu or exit the program, so if you clip part of a sprite and save over it, you haven't lost that data yet.
