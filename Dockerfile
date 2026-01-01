FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update --allow-releaseinfo-change && apt-get install -y ffmpeg

USER node
