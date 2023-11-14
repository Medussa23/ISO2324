@echo off
REM Script.bat ejercicio de hacer media por parametro o argumentos
REM 
REM auto Alejandro González Toro
REM Feche: 14-11-2023

SET numero1=%1
SET numero1=%2
SET numero1=%3

set /a media=(%1 + %2 + %3)/3
echo %media%