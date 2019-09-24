FROM debian:stretch-slim AS builder

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && apt-get install --no-install-recommends -y build-essential=11.1 libffi-dev=2.1.1 libgmp-dev=2:6.1.0 zlib1g-dev=1:1.1.1
