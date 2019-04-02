FROM ypcs/debian:stretch

RUN \
    /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes --no-install-recommends install \
        python \
        python-dev \
        python-pip \
        python-setuptools \
        python-wheel && \
    /usr/lib/docker-helpers/apt-cleanup

RUN echo "Source: https://github.com/ypcs/docker-python\nBuild date: $(date --iso-8601=ns)" >/README
