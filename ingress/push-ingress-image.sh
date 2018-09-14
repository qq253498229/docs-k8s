#!/usr/bin/env bash

docker pull gcr.io/google_containers/defaultbackend:1.4
docker tag gcr.io/google_containers/defaultbackend:1.4 registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4
docker push registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4
docker rmi registry.cn-qingdao.aliyuncs.com/wangdali/defaultbackend:1.4