@echo off

setlocal enabledelayedexpansion

set "template=py"
set "extension=py"
set "def=New Python File"

set "name=%def%.%extension%"
set count=1

copy %~dp0\..\templates\%template%.%extension% "%cd%"

:loop
if not exist "%name%" goto :continue
set /a count+=1
set "name=%def% (%count%).%extension%"
goto :loop

:continue
rename "%template%.%extension%" "%name%"