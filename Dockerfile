FROM node:16.16.0
WORKDIR '/app'
COPY package.json .
RUN npm install -g npm@9.4.1
RUN npm install --legacy-peer-deps react-scripts
COPY . .
CMD ["npm", "start"]