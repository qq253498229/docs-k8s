#!/usr/bin/env bash

docker pull registry.cn-qingdao.aliyuncs.com/wangdali/kubernetes-dashboard-amd64:v1.10.0
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/kubernetes-dashboard-amd64:v1.10.0 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/kubernetes-dashboard-amd64:v1.10.0
