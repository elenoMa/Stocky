# Deploy en Vercel - Stocky

## 🚀 Configuración Automática

Este proyecto está configurado para deploy automático en Vercel con el backend externo.

## 📁 Archivos de Configuración Vercel

### `vercel.json`
- **Build Command**: `npm run build:prod`
- **Output Directory**: `dist`
- **Framework**: Vite
- **Variables de Entorno**: Configuradas automáticamente

### `.vercelignore`
- Excluye archivos innecesarios del deploy
- Optimiza el tamaño del bundle

## 🔧 Variables de Entorno en Vercel

### Automáticas (via vercel.json)
```
VITE_API_URL = https://stocky-api-924b.onrender.com/api
```

### Manuales (si necesitas agregar más)
1. Ve a tu proyecto en Vercel Dashboard
2. Settings → Environment Variables
3. Agrega nuevas variables si es necesario

## 🚀 Comandos de Deploy

### Primera vez
```bash
# Instalar Vercel CLI
npm i -g vercel

# Login
vercel login

# Deploy inicial
vercel
```

### Deploy a producción
```bash
vercel --prod
```

### Deploy con configuración específica
```bash
vercel --prod --build-env VITE_API_URL=https://stocky-api-924b.onrender.com/api
```

## 📋 Flujo de Deploy

### 1. **Push al repositorio**
- Vercel detecta cambios automáticamente
- Inicia build automático

### 2. **Build automático**
- Ejecuta `npm run build:prod`
- Usa variables de entorno de `vercel.json`
- Genera build optimizado

### 3. **Deploy automático**
- Sube archivos a CDN global
- Configura routing automático
- Habilita HTTPS automático

## 🌐 URLs de Deploy

### Preview (cada PR)
```
https://tu-proyecto-git-branch.vercel.app
```

### Producción
```
https://tu-proyecto.vercel.app
```

## ✅ Ventajas de esta Configuración

- **Build automático** en cada push
- **Variables de entorno** configuradas
- **Routing SPA** configurado
- **HTTPS automático**
- **CDN global** automático
- **Preview automático** en PRs

## 🔍 Verificar Deploy

### 1. **Check build logs**
- Vercel Dashboard → Deployments
- Ver logs de build

### 2. **Verificar variables**
- Vercel Dashboard → Settings → Environment Variables
- Confirmar `VITE_API_URL`

### 3. **Test de conexión**
- Abrir app desplegada
- Verificar que se conecte al backend externo

## 🚨 Troubleshooting

### Build falla
```bash
# Ver logs locales
npm run build:prod

# Verificar variables de entorno
echo $VITE_API_URL
```

### Variables no se cargan
- Verificar `vercel.json`
- Verificar Vercel Dashboard
- Revisar build logs

### Error de CORS
- Verificar que el backend permita tu dominio de Vercel
- Revisar configuración CORS en el backend

## 📞 Soporte

- **Vercel Docs**: https://vercel.com/docs
- **Build Logs**: Vercel Dashboard → Deployments
- **Environment Variables**: Vercel Dashboard → Settings
