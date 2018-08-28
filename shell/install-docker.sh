#!/usr/bin/env bash

apt-get update && apt-get install -y curl

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun