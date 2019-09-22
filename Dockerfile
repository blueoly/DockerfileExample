FROM debian:stretch-slim AS builder

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
    build-essential=12.3 \
    libffi-dev=3.2.1 \
    libgmp-dev=2:6.1.1 \
    zlib1g-dev=1:1.2.1 \
    curl=7.52.1 \
    ca-certificates \
    git=1:2.11.1 \
    netbase=5.4 \
 && curl -sSL https://get.haskellstack.org/ | sh \
 && rm -rf /var/lib/apt/lists/*
