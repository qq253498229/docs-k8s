#!/usr/bin/env bash

images=(kube-proxy:v1.13.3 pause:3.1)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/wangdali/$image
  docker tag registry.cn-beijing.aliyuncs.com/wangdali/$image k8s.gcr.io/$image
  docker rmi registry.cn-beijing.aliyuncs.com/wangdali/$image
done

docker pull registry.cn-qingdao.aliyuncs.com/wangdali/flannel:v0.11.0-amd64
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/flannel:v0.11.0-amd64 quay.io/coreos/flannel:v0.11.0-amd64
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/flannel:v0.11.0-amd64


docker pull registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0 quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/nginx-ingress-controller:0.22.0

