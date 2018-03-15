FROM alpine:3.7
MAINTAINER Mike Bartoli "michael.bartoli@pomona.edu"
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
   && pip install langid \
   && rm -rf /var/cache/apk/*
CMD langid -s -n --langs=en,ja,es,de,fr,pt --port=$PORT
