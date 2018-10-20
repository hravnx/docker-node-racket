#!/usr/bin/env bash


RACKET_VS=7.0

# Build the image
docker build -t racket-azpipe:$RACKET_VS --build-arg RACKET_VS=$RACKET_VS src
