# Koristimo Node.js kao osnovu slike
FROM node:18

# Postavljamo radni direktorijum unutar kontejnera
WORKDIR /app

# Kopiramo package.json i package-lock.json
COPY package*.json ./

# Instaliramo zavisnosti
RUN npm install

# Kopiramo sve fajlove iz trenutnog direktorijuma u radni direktorijum unutar kontejnera
COPY . .

# Buildamo React aplikaciju
RUN npm run build

# Otvarmo port 80 za pristup aplikaciji
EXPOSE 80

# Pokrećemo React aplikaciju
CMD ["npm", "start"]
