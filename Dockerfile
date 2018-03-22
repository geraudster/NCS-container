FROM ubuntu:16.04

RUN apt update && \
    apt -y --no-install-recommends install git build-essential sudo wget lsb-release udev ca-certificates && \
    mkdir -p ~/workspace && \
    cd ~/workspace && \
    git clone https://github.com/movidius/ncsdk.git && \
    cd ~/workspace/ncsdk && \
    make install && \
    cd ~ && \
    rm -rf ~/workspace/ncsdk && \
    rm -rf /opt/movidius && \
    apt remove *-dev && \
    rm -rf /var/lib/apt/lists/*

