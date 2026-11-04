@echo off
chcp 65001 >nul
title 上班鼓励器

:: 自动查找 Edge 路径
set "EDGE_PATH="
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
  set "EDGE_PATH=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
) else if exist "C:\Program Files\Microsoft\Edge\Application\msedge.exe" (
  set "EDGE_PATH=C:\Program Files\Microsoft\Edge\Application\msedge.exe"
)

if not defined EDGE_PATH (
  echo 未找到 Microsoft Edge，请先安装 Edge 浏览器。
  pause
  exit /b
)

:: 获取当前目录下的 HTML 文件路径
set "HTML_FILE=%~dp0上班鼓励器.html"

:: 启动应用模式窗口
start "" "%EDGE_PATH%" --app="file:///%HTML_FILE:\=/%" --window-size=460,780

exit
