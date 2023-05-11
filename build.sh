#!/bin/sh

build_push(){
  nerdctl build --platform=${ARCHS} --output type=image,name=${REGISTRY}/${NAME}:latest,push=true .
}

helm_build_push(){
  FN=${NAME}-${VER}.tgz
  # rm ${FN}
  helm package ./install --version ${VER}
  curl --data-binary "@${FN}" http://helm.klogsolenopsys.org/api/charts
}

REGISTRY=registry.klogsolenopsys.org
NAME=alexstorm-hsm-postgres
ARCHS="linux/amd64,linux/arm64"
VER=0.1.3

helm_build_push
build_push





