# Despliegue Dockerizado - Pokemon App

Este entorno dockeriza el backend (Spring Boot), frontend (React) y Redis para desarrollo o producción.

## Requisitos
- Docker y Docker Compose instalados

## Estructura
- `Dockerfile.backend`: Backend Java
- `Dockerfile.frontend`: Frontend React
- `docker-compose.yml`: Orquestación de servicios

## Uso rápido

1. Construir e iniciar todo:
   ```sh
   docker-compose up --build
   ```

2. Accede a la app:
   - Frontend: [http://localhost](http://localhost)
   - Backend: [http://localhost:8080](http://localhost:8080)
   - Redis: puerto 6379

## Variables de entorno
- El frontend usa `REACT_APP_API_URL` para comunicarse con el backend.
- El backend usa `SPRING_REDIS_HOST`, `SPRING_REDIS_PORT` y `POKEAPI_URL`.

## Notas
- Puedes personalizar los puertos en `docker-compose.yml`.
- Para producción, ajusta los valores de variables y seguridad según corresponda. 