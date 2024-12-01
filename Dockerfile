# Basis-Image: Verwende Node.js LTS-Version
FROM node:16

# Setze das Arbeitsverzeichnis innerhalb des Containers
WORKDIR /usr/src/app

# Kopiere die package.json und package-lock.json (falls vorhanden) in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den restlichen Quellcode in den Container
COPY . .

# Exponiere den Port
EXPOSE 8080

# Startbefehl für die Anwendung
CMD ["node", "server.js"]
