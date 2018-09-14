#!/usr/bin/env bash
kubectl get svc -n kube-system | grep dashboard | grep -v grep | awk '{print $5}'