FROM node:10

RUN apt-get update && apt-get install -y nano wget dialog net-tools  

RUN npm install -g nodemon

COPY entrypoint.sh /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]

CMD ["app:dev"]