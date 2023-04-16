#!/usr/bin/env bash

pushd hugocms
hugo
popd

pushd k8s
./deploy.sh
popd

pushd hugocms
./deploy.sh
popd