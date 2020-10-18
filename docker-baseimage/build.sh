#!/bin/sh

docker build -f Dockerfile -t jhapy/base-image:1.0 .
docker build -f DockerfileSlim -t jhapy/base-image-slim:1.0 .
docker build -f DockerfileSlimWithTesseract -t jhapy/base-image-slim-tesseract:1.0 .
docker build -f DockerfileSlimWithOpenoffice -t jhapy/base-image-slim-ooffice:1.0 .

docker tag jhapy/base-image:1.0 jhapy/base-image:latest
docker tag jhapy/base-image-slim:1.0 jhapy/base-image-slim:latest
docker tag jhapy/base-image-slim-tesseract:1.0 jhapy/base-image-slim-tesseract:latest
docker tag jhapy/base-image-slim-ooffice:1.0 jhapy/base-image-slim-ooffice:latest

docker push jhapy/base-image:1.0
docker push jhapy/base-image:latest
docker push jhapy/base-image-slim:1.0
docker push jhapy/base-image-slim:latest
docker push jhapy/base-image-slim-tesseract:1.0
docker push jhapy/base-image-slim-tesseract:latest
docker push jhapy/base-image-slim-ooffice:1.0
docker push jhapy/base-image-slim-ooffice:latest