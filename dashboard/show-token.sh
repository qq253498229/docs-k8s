#!/usr/bin/env bash
kubectl apply -f dashboard-role.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
