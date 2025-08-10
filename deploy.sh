#!/bin/bash
cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest
touch logs.txt
chmod 777 logs.txt

aws eks --region us-east-1 update-kubeconfig --name my-eks-cluster2

kubectl apply -f ./deployment.yaml >> logs.txt 2>&1
kubectl rollout restart deployment ekslove-deployment -n hello-world >> logs.txt 2>&1
kubectl apply -f ./service.yaml >> logs.txt 2>&1

touch abc123.txt
