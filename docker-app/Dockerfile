FROM node:20-alpine

WORKDIR /usr/src/app

COPY package.json .

RUN echo '{"name": "docker-app", "version": "1.0.0", "dependencies": {"express": "5.1.0"}}' > package.json \
    && npm install --omit=dev

COPY index.js .

EXPOSE 8080

CMD ["node","index.js"]