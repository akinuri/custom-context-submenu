@echo off

del "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\SendTo\New Folder with Selection.bat"

copy "New Folder with Selection.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\SendTo"

echo.

echo File copied to SendTo (C:\Users\%username%\AppData\Roaming\Microsoft\Windows\SendTo) folder.

echo.

pause