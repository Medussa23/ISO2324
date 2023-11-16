@echo off
REM Directorios
REM 
REM auto Alejandro González Toro
REM Feche: 15-11-2023

:menu
echo Opciones de Menu.
echo 1 para crear fichero con nombre pedido
echo 2 muestra arbol de directorios de usuario
echo 3 muestra archivos txt
echo 4 crea directorios
echo 5 copia contenido en Escritorio

set /p opcion=Selecciona 1, 2, 3, 4 o 5 y pulsa enter


if %opcion%==1 goto FICHERO
if %opcion%==2 goto ARBOL
if %opcion%==3 goto TXT
if %opcion%==4 goto DIRECTORIOS
if %opcion%==5 goto ESCRITORIO

:FICHERO
type nul %USERPROFILE% > pedido.txt
goto menu

:ARBOL
tree %USERPROFILE%
goto menu

:TXT
dir %USERPROFILE%\*.txt
goto menu

:DIRECTORIOS
mkdir alfredoff
mkdir marinapg
mkdir ramonam
goto menu

:ESCRITORIO
xcopy %USERPROFILE% %USERPROFILE%\Desktop
goto menu