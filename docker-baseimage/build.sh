#!/bin/sh

docker build -f Dockerfile -t jhapy/base-image:1.0 .
docker build -f DockerfileSlim -t jhapy/base-image-slim:1.0 .
docker build -f DockerfileSlimWithTesseract -t jhapy/base-image-slim-tesseract:1.0 .
docker build -f DockerfileSlimWithOpenoffice -t jhapy/base-image-slim-ooffice:1.0 .

docker push jhapy/base-image:1.0
docker push jhapy/base-image-slim:1.0
docker push jhapy/base-image-slim-ooffice:1.0
docker push jhapy/base-image-slim-jdkoracle:1.0