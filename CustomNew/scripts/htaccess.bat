@echo off

setlocal enabledelayedexpansion

set "def=.htaccess"

set "name=%def%"
set count=1

:loop
if not exist "%name%" goto :continue
set /a count+=1
set "name=%def% (%count%)"
goto :loop

:continue
type NUL > "%name%"