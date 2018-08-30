#!/usr/bin/env bash
helm_version=v2.10.0
curl -s https://raw.githubusercontent.com/qq253498229/docs-helm/master/tars/helm-${helm_version}-linux-amd64.tar.gz  | tar zxvf -
mv linux-amd64/helm /usr/local/bin/helm
rm -rf linux-amd64