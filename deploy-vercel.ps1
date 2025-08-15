# Deploy Script para Vercel - Stocky
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    DEPLOY STOCKY A VERCEL" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Verificar configuración
Write-Host "1. Verificando configuración..." -ForegroundColor Yellow
if (-not (Test-Path "vercel.json")) {
    Write-Host "ERROR: No se encontró vercel.json" -ForegroundColor Red
    Read-Host "Presiona Enter para continuar"
    exit 1
}

# Instalar dependencias
Write-Host "2. Instalando dependencias..." -ForegroundColor Yellow
npm install

# Build de producción
Write-Host "3. Build de producción..." -ForegroundColor Yellow
npm run build:prod

# Deploy a Vercel
Write-Host "4. Deploy a Vercel..." -ForegroundColor Yellow
vercel --prod

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "    DEPLOY COMPLETADO" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Read-Host "Presiona Enter para continuar"
