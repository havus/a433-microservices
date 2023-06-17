# use node image alpine
FROM node:15.0.1-alpine3.10

# set working directory image
WORKDIR /usr/src/app
# copy all file to workdir
COPY . .

# expose port
EXPOSE 3000

# install dependencies
RUN npm install

# run index.js
CMD ["npm", "start"]
