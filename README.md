# Dockerizing a React App 

## Create a React App

Open the project directory and run:

```
$ npx create-react-app .
```

```
$ npm start 
```

Runs the app in the development mode.

Open http://localhost:3000 to view it in the browser.

The page will reload if you make edits.

## Dockerizing the React app

update the Dockerfile:
```
FROM node 
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
```


```
$ docker build -t <image name> .
```

```
docker run -d -p 3000:3000 d-react
```
