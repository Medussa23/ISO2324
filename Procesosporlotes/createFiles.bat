@echo off
REM Estructuar condicional
REM 
REM auto Alejandro González Toro
REM Feche: 15-11-2023

echo Pulsa 1 para crear un archivo txt

echo Pulsa 2 para crear un archivo bat

set /p opc=
set /p nombre="nombre del archivo"

if %opc%equ 1 goto archivotxt
if %opc%equ 2 goto archivobat
:archivotxt
type null > %archivotxt% archivo txt
echo El archivo %nombre%, se ha creado correctamente
exit
:archivobat
type null > %archivobat% archivo bat
echo El archivo %nombre%, se ha creado correctamente
exit