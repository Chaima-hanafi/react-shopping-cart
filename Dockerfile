# Utiliser une image Node.js officielle
FROM node:18

# Créer et définir le dossier de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du projet
COPY . .

# Exposer le port utilisé par React (par défaut : 3000)
EXPOSE 3000

# Lancer le serveur de développement React
CMD ["npm", "start"]
# Lancer le serveur de développement React
