FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh
RUN apt-get update -y
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY index.js index.js

# RUN npm install

ENTRYPOINT [ "node", "index.js" ]

