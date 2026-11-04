@echo off
chcp 65001 >nul
title Work Encourager

:: Find Edge
set "EDGE_PATH="
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
  set "EDGE_PATH=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
  set "EDGE_PATH=C:\Program Files\Microsoft\Edge\Application\msedge.exe"
)

if not defined EDGE_PATH (
  echo Microsoft Edge not found. Please install Edge browser first.
  pause
  exit /b
)

:: Get current folder path
set "HTML_FILE=%~dp0work-encourager.html"

:: Convert backslashes to forward slashes
set "HTML_URL=%HTML_FILE:\=/%"

:: Launch app window
start "" "%EDGE_PATH%" --app="file:///%HTML_URL%" --window-size=460,780

exit
