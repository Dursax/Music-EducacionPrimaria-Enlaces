@echo off
echo ==========================================
echo   Subiendo cambios a GitHub, Maestro...
echo ==========================================
cd /d "%~dp0"

:: 1. Subir los archivos a GitHub
git add .
git commit -m "Actualizacion automatica y generacion de enlaces"
git push

echo.
echo ==========================================
echo   ¡Listo! Nube actualizada.
echo   Generando tu lista de enlaces...
echo ==========================================

:: 2. Crear el archivo de texto con los enlaces
set "archivo=Enlaces_Google_Sites.txt"

echo ========================================== > "%archivo%"
echo MIS ENLACES DE EXELEARNING PARA GOOGLE SITES >> "%archivo%"
echo ========================================== >> "%archivo%"
echo. >> "%archivo%"

:: 3. Leer cada carpeta y generar su enlace exacto
for /d %%D in (*) do (
    :: Ignorar carpetas del sistema (.git)
    if /I not "%%D"==".git" (
        echo Actividad: %%D >> "%archivo%"
        echo Enlace: https://dursax.github.io/Music-EducacionPrimaria-Enlaces/%%D/ >> "%archivo%"
        echo -------------------------------------------------- >> "%archivo%"
    )
)

echo.
echo ¡Perfecto! Se ha creado un archivo llamado "%archivo%"
echo Abrelo para copiar y pegar tus enlaces.
echo.
pause