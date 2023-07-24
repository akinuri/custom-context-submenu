@echo off

setlocal enabledelayedexpansion

set "template=web-project"
set "def=New Web Project"

set "name=%def%"
set count=1

xcopy %~dp0\..\templates\%template% "%cd%\%template%" /I

:loop
if not exist "%name%" goto :continue
set /a count+=1
set "name=%def% (%count%)"
goto :loop

:continue
rename "%template%" "%name%"