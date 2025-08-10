#!/bin/bash

cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest

kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml



