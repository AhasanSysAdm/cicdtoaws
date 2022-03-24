FROM node:14
#Setting working directory.
WORKDIR /usr/src/app
#Installing application dependencies
COPY package*.json ./
RUN npm install

#Bundle app source
COPY . .
EXPOSE 3000
CMD ["node" "nodeapp.js"]