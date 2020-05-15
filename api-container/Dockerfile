FROM node:10

RUN apt-get update && apt-get install -y nano wget dialog net-tools  

RUN ["mkdir", "/home/nodejstest/"]
ADD index.js /home/nodejstest

CMD ["nodejs", "/home/nodejstest/index.js"]

