FROM ubuntu:latest

RUN apt-get update; apt-get install curl ca-certificates -y --no-install-recommends;

COPY NAE/AppDef.json /etc/NAE/AppDef.json

RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://cloud.nimbix.net/api/jarvice/validate

RUN mkdir -p /etc/NAE && touch /etc/NAE/AppDef.json
