#!/bin/bash
cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest
touch logs.txt
chmod 777 logs.txt
kubectl apply -f ./deployment.yaml >> logs.txt 2>&1
kubectl apply -f ./service.yaml >> logs.txt 2>&1
touch abc123.txt
