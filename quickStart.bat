@echo off

:begin
set /p slim="����Ԥ��ս������: "
python akhelper.py quick %slim%
goto begin