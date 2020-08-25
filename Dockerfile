FROM node:12

MAINTAINER dollyaswin "dolly.aswin@gmail.com"

# update npm
RUN npm install npm@6.14
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

# install rsync
RUN apt-get update && \
    apt-get -y install rsync
