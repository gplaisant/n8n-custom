FROM n8nio/n8n:latest-debian

USER root

RUN echo "deb http://archive.debian.org/debian buster main" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list

RUN apt-get update -o Acquire::Check-Valid-Until=false && apt-get install -y ffmpeg

USER node
