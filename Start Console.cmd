@echo off
if not exist "%SystemRoot%\System32\wscript.exe" exit /b 2
start "" "%SystemRoot%\System32\wscript.exe" //B //NoLogo "%~dp0Start Console.vbs"
if errorlevel 1 exit /b %ERRORLEVEL%
exit /b 0
