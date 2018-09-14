#!/usr/bin/env bash

images=(kube-proxy-amd64:v1.11.1 kube-controller-manager-amd64:v1.11.1 kube-scheduler-amd64:v1.11.1 kube-apiserver-amd64:v1.11.1 coredns:1.1.3 etcd-amd64:3.2.18 pause:3.1)

for image in ${images[@]}; do
  docker pull registry.cn-qingdao.aliyuncs.com/wangdali/$image
  docker tag registry.cn-qingdao.aliyuncs.com/wangdali/$image k8s.gcr.io/$image
  docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/$image
done