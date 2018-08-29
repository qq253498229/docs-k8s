#!/usr/bin/env bash
docker pull k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0
docker tag k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0 registry.cn-qingdao.aliyuncs.com/wangdali/kubernetes-dashboard-amd64:v1.10.0
docker push registry.cn-qingdao.aliyuncs.com/wangdali/kubernetes-dashboard-amd64:v1.10.0