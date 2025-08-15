# Configuración de Entornos - Stocky

## Descripción
Este proyecto está configurado para trabajar con diferentes entornos de backend usando variables de entorno.

## Archivos de Configuración

### `.env.example` (Plantilla)
- **Propósito**: Plantilla para otros desarrolladores
- **Contenido**: Ejemplos de configuración para diferentes entornos
- **Git**: ✅ Se sube al repositorio

### `.env` (Desarrollo Local)
- **Propósito**: Configuración para desarrollo local
- **Contenido**: `VITE_API_URL=http://localhost:3000/api`
- **Git**: ❌ NO se sube al repositorio

### `.env.production` (Producción)
- **Propósito**: Configuración para producción
- **Contenido**: `VITE_API_URL=https://stocky-api-924b.onrender.com/api`
- **Git**: ❌ NO se sube al repositorio

## Comandos Disponibles

### Desarrollo
```bash
npm run dev          # Usa .env (localhost)
```

### Build
```bash
npm run build        # Build por defecto
npm run build:dev    # Build para desarrollo (usa .env)
npm run build:prod   # Build para producción (usa .env.production)
```

### Preview
```bash
npm run preview      # Preview del build
```

## Flujo de Trabajo

### 1. Desarrollo Local
```bash
# Asegúrate de tener .env configurado
npm run dev
```

### 2. Commit al Repositorio
- Solo se sube `.env.example`
- Los archivos `.env` y `.env.production` se ignoran

### 3. Deploy a Producción
```bash
npm run build:prod
```
- Automáticamente usa `.env.production`
- Se conecta al backend externo

## Cambiar Entre Entornos

### Para Desarrollo Local
```bash
# Editar .env
VITE_API_URL=http://localhost:3000/api
```

### Para Producción
```bash
# Editar .env.production
VITE_API_URL=https://stocky-api-924b.onrender.com/api
```

### Para Otros Entornos
```bash
# Crear .env.staging
VITE_API_URL=https://tu-backend-staging.com/api

# Build específico
npm run build --mode staging
```

## Estructura de URLs

- **Desarrollo**: `http://localhost:3000/api`
- **Producción**: `https://stocky-api-924b.onrender.com/api`

## Notas Importantes

- ✅ Las variables de entorno se cargan automáticamente
- ✅ El fallback es `http://localhost:3000/api`
- ✅ CORS debe estar configurado en el backend
- ✅ Reinicia el servidor después de cambiar variables de entorno

## Troubleshooting

### Error de CORS
- Verificar que el backend permita tu dominio
- Revisar configuración de CORS en el backend

### Variables no se cargan
- Verificar que el archivo `.env` esté en la raíz del proyecto
- Reiniciar el servidor de desarrollo
- Verificar que las variables empiecen con `VITE_`

### Build falla
- Verificar que todos los archivos `.env` existan
- Verificar sintaxis de las variables de entorno
