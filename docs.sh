#!/usr/bin/env bash

version=0.0.1

asciidoctor readmd.adoc
docker build . -t codeforfun/docs-k8s:${version}
docker push codeforfun/docs-k8s:${version}