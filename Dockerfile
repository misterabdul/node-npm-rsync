FROM node:14.18.1

MAINTAINER dollyaswin "dolly.aswin@gmail.com"

# update npm
RUN npm install npm@8.1.1
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

# install rsync
RUN apt-get update && \
    apt-get -y install rsync
