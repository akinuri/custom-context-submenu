@echo off

setlocal enabledelayedexpansion

set "template=bat"
set "extension=bat"
set "def=New Windows Batch File"

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
