#!/usr/bin/env bash

docker pull registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4 gcr.io/google_containers/defaultbackend:1.4
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4

kubectl apply -f mandatory.yaml