#!/usr/bin/env bash

bash pull.sh
kubectl apply -f kubernetes-dashboard.yaml
kubectl apply -f dashboard-role.yaml
