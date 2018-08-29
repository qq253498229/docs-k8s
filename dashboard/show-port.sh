#!/usr/bin/env bash
echo $(kubectl get svc -n kube-system | grep dashboard | grep -v grep | awk '{print $5}')