@echo off
echo ==========================================
echo   Subiendo cambios a GitHub, Maestro...
echo ==========================================
cd /d "%~dp0"

git add .
git commit -m "Actualizacion automatica: %date% %time%"
git push

echo.
echo ==========================================
echo   ¡Listo! Tus actividades ya estan en internet.
echo ==========================================
echo.
echo Tu enlace base para poner en Google Sites es:
echo https://dursax.github.io/Music-EducacionPrimaria-Enlaces/
echo.
echo Recuerda: Solo tienes que anadir el nombre de la carpeta al final del enlace.
echo.
pause