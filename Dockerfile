# pull the official base image
FROM node 
# set working directory
WORKDIR /app

COPY package.json .
RUN npm install
# add app
COPY . .
EXPOSE 3000
CMD ["npm", "start"]


