@echo off

setlocal enabledelayedexpansion

set "template=css"
set "extension=css"
set "def=New Cascading Style Sheet Document"

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