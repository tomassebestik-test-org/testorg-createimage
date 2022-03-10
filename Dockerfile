# FAKE DOCKERFILE - TO TEST CACHE

FROM debian:bullseye
ARG DEBIAN_FRONTEND=noninteractive

# Install system packages
# -----------------------------------------------------------------------------------------
RUN : \
    && apt-get update \
    && apt-get install -y -q --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        git \
        libbz2-dev \
        libffi-dev \
        liblzma-dev \
        libncurses5-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxmlsec1-dev \
        llvm \
        make \
        python \
        tk-dev \
        wget \
        xz-utils \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && :

RUN true
