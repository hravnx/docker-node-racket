FROM node:8-slim

LABEL maintainer="henrikr@unity3d.com"
LABEL description="A docker image with Nodejs amnd Racket for Azure Pipelines usage"

WORKDIR /racket

RUN curl -L -o racket-install.sh https://download.racket-lang.org/releases/7.0/installers/racket-minimal-7.0-x86_64-linux.sh

RUN chmod +x ./racket-install.sh

RUN ["./racket-install.sh", "--in-place", "--create-links", "/usr/local"]

RUN ["raco",  "pkg", "install", "--auto", "--scope", "installation", "rackunit-lib", "compiler-lib"]

ENTRYPOINT ["racket", "--version"]
