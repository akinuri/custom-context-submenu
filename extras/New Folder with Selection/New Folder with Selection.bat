@echo off

setlocal enabledelayedexpansion

set "def=New Folder"
set "name=%def%"

set /p name=Folder name: 

set count=1

:loop
if not exist "%name%" goto :continue
set /a count+=1
set "name=%def% (%count%)
goto :loop

:continue
mkdir "%name%"
FOR %%A IN (%*) DO move "%%~A" "%cd%\\%name%"
