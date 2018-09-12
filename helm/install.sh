#!/usr/bin/env bash

helm_version=v2.10.0

# 安装helm
curl -s https://codeforfun.oss-cn-beijing.aliyuncs.com/k8s/helm-${helm_version}-linux-amd64.tar.gz  | tar zxvf -
mv linux-amd64/helm /usr/local/bin/helm
rm -rf linux-amd64

# 拉取镜像
docker pull registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0
docker tag registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0 gcr.io/kubernetes-helm/tiller:v2.10.0
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0

# 如果是client端可以加入 --client-only 命令
#helm init --stable-repo-url https://aliacs-app-catalog.oss-cn-hangzhou.aliyuncs.com/charts/
#helm repo add incubator https://aliacs-app-catalog.oss-cn-hangzhou.aliyuncs.com/charts-incubator/
#helm repo update
helm init --upgrade -i registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0 --stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts

kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
helm init --upgrade \
--service-account tiller \
-i registry.cn-qingdao.aliyuncs.com/wangdali/tiller:v2.10.0 \
--stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts \
--tiller-namespace kube-system
helm repo add stable https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts
helm repo update




#https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts
#https://aliacs-app-catalog.oss-cn-hangzhou.aliyuncs.com/charts/

# 创建身份

helm init --service-account tiller --upgrade