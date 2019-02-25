#!/usr/bin/env bash

images=(kube-proxy:v1.13.3 kube-apiserver:v1.13.3 kube-controller-manager:v1.13.3 kube-scheduler:v1.13.3 coredns:1.2.6 etcd:3.2.24 pause:3.1)

for image in ${images[@]}; do
  docker pull registry.cn-beijing.aliyuncs.com/wangdali/$image
  docker tag registry.cn-beijing.aliyuncs.com/wangdali/$image k8s.gcr.io/$image
  docker rmi registry.cn-beijing.aliyuncs.com/wangdali/$image
done