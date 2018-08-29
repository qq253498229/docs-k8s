#!/usr/bin/env bash

bash pull.sh
kubectl apply -f kubernetes-dashboard.yaml
kubectl apply -f dashboard-role.yaml
echo 'token:'
echo $(kubectl -n kube-system get secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}') --output=jsonpath={.data.token})