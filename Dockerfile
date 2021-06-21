FROM docker.io/ypcs/ubuntu:impish

ARG APT_PROXY

RUN sed -i 's/main$/main universe/g' /etc/apt/sources.list && \
    /usr/lib/docker-helpers/apt-setup && \
    /usr/lib/docker-helpers/apt-upgrade && \
    apt-get --assume-yes --no-install-recommends install \
        python3.10 \
        python3.10-dev \
        python3.10-venv && \
    /usr/lib/docker-helpers/apt-cleanup && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
