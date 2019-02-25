#!/usr/bin/env bash

helm_version=v2.12.3

# 安装helm
curl -s https://codeforfun.oss-cn-beijing.aliyuncs.com/k8s/helm-${helm_version}-linux-amd64.tar.gz  | tar zxvf -
mv linux-amd64/helm /usr/local/bin/helm
rm -rf linux-amd64


kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
helm init --service-account tiller --upgrade -i registry.cn-qingdao.aliyuncs.com/wangdali/tiller:${helm_version} --stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts