FROM node:12.16.2

WORKDIR /usr/src/app

RUN git clone https://github.com/docker-hy/ml-kurkkumopo-frontend.git

WORKDIR /usr/src/app/ml-kurkkumopo-frontend

RUN npm ci

RUN npm run build
RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "-l", "3000", "build"]
