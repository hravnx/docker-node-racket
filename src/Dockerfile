FROM node:8-slim

LABEL maintainer="hravnx@gmail.com"
LABEL description="A docker image with Nodejs and Racket for Azure Pipelines usage"

# we need sqlite for docs setup when installing packages
RUN apt-get update && apt-get install -y sqlite

ARG RACKET_VS

ADD https://download.racket-lang.org/releases/${RACKET_VS}/installers/racket-${RACKET_VS}-x86_64-linux.sh /tmp/inst-rack.sh

RUN ["/bin/bash", "/tmp/inst-rack.sh", "--in-place", "--create-links", "/usr/local"]

RUN ["rm", "/tmp/inst-rack.sh"]

CMD ["/bin/bash"]
