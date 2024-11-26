:: echo off desactiva el echo de la consola para los comandos, la @ es un alias de echo of para el comando en donde se ejecuta.
@echo off

:: title fija el titulo de la consola
title Limpieza de la memoria de Windows
 
RAMMap64.exe -Ew
RAMMap64.exe -Es
RAMMap64.exe -Et
RAMMap64.exe -Em
RAMMap64.exe -E0