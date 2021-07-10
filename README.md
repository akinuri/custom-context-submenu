
# Custom "New" Menu

A custom "New" submenu on the context menu.

I do a lot of tests/experiments, and I'm tired of creating new files/templates everytime I want to try something. To get around this, I've created a submenu to contain all coding releated files.

For more information, you can check this [question](https://superuser.com/questions/1242099/create-a-new-new-submenu-in-context-menu-with-a-custom-name) that I've asked on [SUPER USER](https://superuser.com/).

## Screenshot

![screenshot of the submenu](https://raw.githubusercontent.com/akinuri/custom-context-submenu/master/screenshot-of-submenu.jpg)

## Installation

You need to copy `CustomNew` folder to your `Windows` directory (e.g. `C:\Windows`). Then run `install.reg` that's inside the CustomNew folder. If you're familiar with Registry Keys and Batch files, you can modify the submenu to meet your needs.

## Customization

Is possible to add/remove/change standard files and standard IDE or Editors.
Example of template file:
I want to add CPP standard file, so first of all we need to edit `"SubCommands"="npp;cmd;css;html;html-canvas;html-js;js;php;php-class;htaccess;py;reg;bat;ps1;vbs"` and add `;cpp` where you want, just remember that the position will be reflected in the context menu.
Now is time to create new key, here an example:

    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cpp]
    @="C++ File"
    ;You can delete row below if you not desire an icon.
    "Icon"="C:\\Program Files\\Notepad++\\notepad++.exe,0"
    ;Uncomment the line below if you want a separator above the contextmenuitem
    ;"CommandFlags"=dword:00000020
    
    [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cpp\command]
    @="C:\\Windows\\CustomNew\\scripts\\cpp.bat"

Now create `cpp.bat` in scripts folder and paste it:

    @echo off
    
    setlocal enabledelayedexpansion
    
    ;Below template file, just edit with your kind of file.
    set "template=cpp"
    set "extension=cpp"
    set "def=New Cpp File"
    
    set "name=%def%.%extension%"
    set count=1
    
    copy C:\Windows\CustomNew\templates\%template%.%extension% "%cd%"
    
    :loop
    if not exist "%name%" goto :continue
    set /a count+=1
    set "name=%def% (%count%).%extension%"
    goto :loop
    
    :continue
    rename "%template%.%extension%" "%name%"

Now go to template folder and create `cpp.cpp`.
Install.reg is now complete, is time to edit uninstall.reg.
Edit uninstall.reg and add it at the end:

    [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\CommandStore\shell\cpp]
Finish. Just repeat this procedure with all kind of file you want inside like `.cs` `.hpp` `.java` and other.
 