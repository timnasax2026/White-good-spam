# Tunatumia Node.js version ya hivi karibuni
FROM node:18

# Tengeneza folder la app
WORKDIR /usr/src/app

# Nakili package.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Nakili code zote za website
COPY . .

# Fungua port 3000
EXPOSE 3000

# Washa server
CMD [ "node", "server.js" ]
