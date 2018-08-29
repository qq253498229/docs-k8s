#!/usr/bin/env bash

version=latest

asciidoctor index.adoc
docker build . -t registry.cn-qingdao.aliyuncs.com/wangdali/docs-k8s:${version}
docker push registry.cn-qingdao.aliyuncs.com/wangdali/docs-k8s:${version}