# Utilizar una versión LTS específica de Node.js (alpine para una imagen más ligera)
FROM node:18-alpine

# Información de mantenimiento
LABEL maintainer="Jose Ceballos"

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de dependencias
COPY package*.json ./

# Instalar solo las dependencias de producción
RUN npm install --production

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación se ejecuta
EXPOSE 8000

# Crear un usuario no root por seguridad
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Comando para iniciar la aplicación
CMD ["npm", "start"]
