# Imagen base
FROM node:22

LABEL developer="ferran"

# Especificar el directorio de trabajo en la imagen docker
WORKDIR /app

# Copiar los fichero del proyecto
# Empezamos por los que cargan las dependencias
# COPY package.json
# COPY package-lock.json
COPY package*.json ./

# Ahora necesitamos obtener los módulos
RUN npm install 

# Copiar el directorio de la aplicación
# COPY /src /app/
COPY . .

# Ejecuta la aplicación
# CMD ["node", "src/index.js"]
CMD ["npm", "start"]

# Ja es pot executar amb
# docker build -t node-game .

# Copiar script
# COPY ...
# Definir el punto de entrada com a script
# ENTRYPOINT [ "executable" ]

