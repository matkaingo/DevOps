FROM node:10-alpine
# Create app directory
WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install --silent
# Bundle app source
COPY . . 
EXPOSE 3000
CMD [ "node", "api.js" ]