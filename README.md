# Custom "New" Menu

A custom "New" submenu on the context menu.

I do a lot of tests/experiments, and I'm tired of creating new files/templates everytime I want to try something. To get around this, I've created a submenu to contain all coding releated files.

For more information, you can check this [question](https://superuser.com/questions/1242099/create-a-new-new-submenu-in-context-menu-with-a-custom-name) that I've asked on [SUPER USER](https://superuser.com/).

## Screenshot

![screenshot of the submenu](https://raw.githubusercontent.com/akinuri/custom-context-submenu/master/screenshot-of-submenu.jpg)

## Installation

You need to copy `CustomNew` folder to your `Windows` directory (e.g. `C:\Windows`). Then run `install.reg` that's inside the CustomNew folder.

If you're familiar with Registry Keys and Batch files, you can modify the submenu to meet your needs.


### Custom Installation Path

Since the file paths are (need to be) hardcoded in `install.reg`, it's a little troublesome to use a different installation path. One would need to replace all `C:\\Windows\\CustomNew` with the desired path.

I'm thinking of creating a script that will do that. Some time.

## Notes

* If you are using 32-bit applications on 64-bit OS, you will need to modify the `install.reg` and replace `Program Files` with `Program Files (x86)`. This applies to
  * Notepad++ (app and icon)
  * HTML menu items (chrome icons)