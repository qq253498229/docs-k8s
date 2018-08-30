#!/usr/bin/env bash

docker pull gcr.io/kubernetes-helm/tiller:v2.10.0
docker tag gcr.io/kubernetes-helm/tiller:v2.10.0 registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0
docker push registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0