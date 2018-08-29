#!/usr/bin/env bash

kubectl describe secret -n kube-system $(kubectl get secret -n kube-system | grep admin-user | awk '{print $1}')
