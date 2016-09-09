FROM node:6.5
MAINTAINER lordsputnik+docker@metabrainz.org

RUN apt-get update && \
  apt-get install -y \
    postgresql-client-9.4

WORKDIR /apps
RUN git clone --recursive https://github.com/bookbrainz/bookbrainz-site.git
WORKDIR /apps/bookbrainz-site

RUN npm install

WORKDIR /apps/bookbrainz-site/config
RUN cp development.json.example development.json

COPY ./scripts/CreateDB.sh /CreateDB.sh
COPY ./scripts/Start.sh /Start.sh

CMD ["/Start.sh"]
