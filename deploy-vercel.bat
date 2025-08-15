@echo off
echo ========================================
echo    DEPLOY STOCKY A VERCEL
echo ========================================
echo.

echo 1. Verificando configuración...
if not exist "vercel.json" (
    echo ERROR: No se encontró vercel.json
    pause
    exit /b 1
)

echo 2. Instalando dependencias...
call npm install

echo 3. Build de producción...
call npm run build:prod

echo 4. Deploy a Vercel...
call vercel --prod

echo.
echo ========================================
echo    DEPLOY COMPLETADO
echo ========================================
pause
