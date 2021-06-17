FROM docker.io/ypcs/debian:bullseye

RUN \
    /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes --no-install-recommends install \
        python3 \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-wheel && \
    /usr/lib/docker-helpers/apt-cleanup
