## -*- docker-image-name: "geraudster/ncs-container" -*-

FROM ubuntu:16.04

RUN apt-get -qq update && \
apt-get -qq --no-install-recommends install git build-essential sudo wget lsb-release udev ca-certificates curl && \
cd /tmp && \
curl https://codeload.github.com/movidius/ncsdk/tar.gz/v2.08.01.02 | tar xzf - && \
cd /tmp/ncsdk* && \
make install && \
cd ~ && \
rm -rf /tmp/ncsdk* && \
apt-get -qq remove *-dev && \
rm -rf /var/lib/apt/lists/*

ENV PYTHONPATH :/opt/movidius/caffe/python
