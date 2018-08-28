#!/usr/bin/env bash

version=0.0.3

asciidoctor readme.adoc
docker build . -t codeforfun/docs-k8s:${version}
docker push codeforfun/docs-k8s:${version}