@ECHO OFF
echo Script actualizado en: https://github.com/ticgalicia/Minecraft/
echo .
echo Fecha 25/02/2023
echo Proyecto de la web www.ticgalicia.com
echo .
echo EJECUTAR CON BOTON DERECHO COMO ADMINISTRADOR
echo Es importante que el fichero .bat y wget.exe  
echo esten en la carpeta %appdata%\.minecraft de
echo lo contrario, no funcionara.

timeout 10
cd %appdata%\.minecraft\ 
echo "INICIANDO PROCESO DE DESCARGAS CON EL PRORGAMA wget"

wget --no-check-certificate -p -i listado.txt

cls
ECHO COPIANDO FICHEROS...
timeout 1
xcopy resources.download.minecraft.net "assets/objects/" /E /H /C /I /T /Y

cls
echo BORRAMOS LA CARPETA TEMPORAL.
timeout 1

IF EXIST resources.download.minecraft.net RMDIR /S /Q resources.download.minecraft.net

cls
echo HECHO!
timeout 2
