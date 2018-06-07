FROM burakince/docker-dredd:latest

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

RUN apk add --update netcat-openbsd \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["dredd"]
