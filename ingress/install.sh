#!/usr/bin/env bash

docker pull registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0

kubectl apply -f mandatory.yaml