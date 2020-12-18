@echo off

:begin
set /p slim="输入预期战斗次数: "
python akhelper.py quick %slim%
goto begin