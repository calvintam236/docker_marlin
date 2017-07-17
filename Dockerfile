FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="marlin in Docker. Supports GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl \
    && rm -r /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L -O https://github.com/SiaMining/marlin/releases/download/v1.0.0/marlin-1.0.0-linux-amd64.tar.gz \
    && tar -xvf marlin-1.0.0-linux-amd64.tar.gz \
    && mv marlin /usr/local/bin/marlin

ENTRYPOINT ["marlin"]
