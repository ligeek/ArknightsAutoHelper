@echo off
cd /d "D:\ligeek\Fun\Tools\Github\ArknightsAutoHelper-dev_6"
.\ADB\win32\adb.exe connect 127.0.0.1:7555

:begin
set /p slim="����Ԥ��ս������: "
python akhelper.py quick %slim%
taskkill /f /im NemuHeadless.exe
taskkill /f /im NemuPlayer.exe
taskkill /f /im NemuService.exe
taskkill /f /im NemuSVC.exe
else exit