FROM node:alpine

WORKDIR /app

COPY . .

EXPOSE 7860

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl bash &&\
    chmod +x index.js web bot &&\
    npm install

CMD ["sh", "-c", "./bot & ./web & node index.js"]
