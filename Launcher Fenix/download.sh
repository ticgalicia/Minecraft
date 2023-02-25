clear;

echo Script actualizado en: https://github.com/ticgalicia/Minecraft/
echo .
echo Fecha 25/02/2023
echo Proyecto de la web www.ticgalicia.com
echo .
echo EJECUTAR CON BOTON DERECHO COMO ADMINISTRADOR
echo Es importante que el fichero .sh .txt y wget.exe
echo esten en la carpeta %home%\.minecraft de
echo lo contrario, no funcionara.

sleep 10;
clear;

cd %home%
wget --no-check-certificate -p -i listado.txt

cp resources.download.minecraft.net/* assets/objects/ -R

rm resources.download.minecraft.net -R
clear;
echo "HECHO";
sleep 3;
