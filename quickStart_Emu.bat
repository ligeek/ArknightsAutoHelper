@echo off
.\ADB\win32\adb.exe connect 127.0.0.1:7555

:begin
set /p slim="输入预期战斗次数: "
if %slim% == r (goto rst) else (python akhelper.py quick %slim%)
goto begin

:rst
taskkill /f /im adb.exe
.\ADB\win32\adb.exe connect 127.0.0.1:7555
goto begin
REM set /p choose="是否还要继续？（Y/N）："
REM if %choose% == Y goto begin
REM if %choose% == y goto begin
else exit