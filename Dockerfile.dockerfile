
FROM alpine:latest
#Setting working directory.
WORKDIR /app
COPY . /app
#Installing application dependencies
RUN apk add nodejs npm
#Bundle app source
EXPOSE 8081
CMD ["node", "index.js"]
