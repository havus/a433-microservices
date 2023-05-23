# get the base image Node.js version 14
FROM node:14-alpine

# working directory untuk container adalah /app
WORKDIR /app

# copy all source code to container working directory
COPY . .

# set env var NODE_ENV and DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# install and build app
RUN npm install --production --unsafe-perm && npm run build

# expose app port
EXPOSE 8080

# run app
CMD ["npm", "start"]
