FROM node:18

EXPOSE 8080/tcp

LABEL maintainer="MainKronos"
LABEL summary="Rammerhead Proxy Image"
LABEL description="Rammerhead Proxy Image"

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
RUN npm run build

ENTRYPOINT [ "node" ]
CMD ["src/server.js"]