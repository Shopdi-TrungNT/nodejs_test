FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y vim
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

WORKDIR /var/www/code
COPY . .
RUN npm install
CMD ["npm", "start"]