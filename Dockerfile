FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London

# Install Python and pip
RUN apt update -y && \
    apt install -y \
      python3 \
      python3-dev \
      python3-venv \
      python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN python3 -m pip install --no-cache-dir numpy scipy

WORKDIR /workspace

ENTRYPOINT ["/bin/bash"]
