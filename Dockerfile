ARG DREDD_VERSION=14.1.0

FROM burakince/docker-dredd:${DREDD_VERSION}

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

RUN apt-get update && apt-get install -y \
  netcat \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/app/entrypoint.sh

ENTRYPOINT ["/usr/app/entrypoint.sh"]
CMD []
