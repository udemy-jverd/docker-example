# docker build -t joffreyverd/simpleweb .
# docker run -p 8080:8080 joffreyverd/simpleweb
# docker exec -it <containerId> sh

FROM node:lts-alpine

WORKDIR /usr/src/app

COPY --chown=node:node ./package.json ./
RUN npm install
COPY --chown=node:node ./ ./

USER node

CMD ["npm", "start"]
