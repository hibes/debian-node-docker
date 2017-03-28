FROM debian:jessie

COPY node-v7.7.4-linux-x64 /node-v7.7.4

ENV PATH      /node-v7.7.4/bin:$PATH
