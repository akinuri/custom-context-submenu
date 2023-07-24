@echo off

setlocal enabledelayedexpansion

set "template=php-class"
set "extension=php"
set "def=New PHP File"

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