FROM ubuntu:${UBUNTU_VERSION:-18.04}

ARG BUILD_DATE
ARG BUILD_VERSION
ARG GIT_COMMIT
ARG GIT_URL

LABEL maintainer="Dwi Fahni Denni (@zeroc0d3)" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.name="ubuntu" \
      org.label-schema.description="ubuntu image" \
      org.label-schema.vcs-ref="$GIT_COMMIT" \
      org.label-schema.vcs-url="$GIT_URL" \
      org.label-schema.vendor="ZeroC0D3Lab" \
      org.label-schema.version="$BUILD_VERSION"

COPY rootfs /

ENV DEBIAN_FRONTEND noninteractive

USER root
RUN apt -o APT::Sandbox::User=root update; sync
RUN apt-get update; sync
RUN apt-get install -y \
      git \
      bash \
      curl \
      wget \
      apt-transport-https \
      ca-certificates \
      openssh-server \
      openssh-client \
      net-tools \
      vim-tiny \
      nano \
      iputils-ping

RUN chmod +x /tmp/*.sh

RUN apt-get clean; sync

WORKDIR /root

EXPOSE 22
