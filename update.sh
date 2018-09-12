#!/usr/bin/env bash
#git pull
kubectl delete -f docs-k8s.yaml
kubectl apply -f docs-k8s.yaml