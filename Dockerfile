## -*- docker-image-name: "geraudster/ncs-container" -*-

FROM ubuntu:16.04

RUN apt update && \
apt -y --no-install-recommends install git build-essential sudo wget lsb-release udev ca-certificates curl && \
mkdir -p ~/workspace && \
cd ~/workspace && \
#    git clone -b ncsdk2 https://github.com/movidius/ncsdk.git && \
curl https://ncs-forum-uploads.s3.amazonaws.com/ncsdk/ncsdk-02_05_00_02-full/ncsdk-2.05.00.02.tar.gz | tar xvzf -
cd ~/workspace/ncsdk-2.05.00.02 && \
make install && \
cd ~ && \
rm -rf ~/workspace/ncsdk* && \
rm -rf /opt/movidius && \
apt -y remove *-dev && \
rm -rf /var/lib/apt/lists/*
