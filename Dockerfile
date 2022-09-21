# main image
FROM ghcr.io/illallangi/debian:v0.0.4

# install icecast2
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && \
  apt-get install -y --no-install-recommends \
    lighttpd=1.4.53-4+deb10u2 \
  && \
  apt-get clean \
  && \
  rm -rf /var/lib/apt/lists/* /var/www/html/* /etc/lighttpd/*

# add local files
COPY rootfs /
