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

# Setze die Umgebungsvariable für den Port (Cloud Run verwendet standardmäßig 8080)
ENV PORT 3000

# Exponiere den Port
EXPOSE 3000

# Startbefehl für die Anwendung
CMD ["node", "server.js"]
