#!/bin/bash
cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest

touch logs.txt
chmod 777 logs.txt

# Force kubeconfig location so kubectl doesn't default to localhost:8080
export KUBECONFIG=/root/.kube/config

# Update kubeconfig from AWS EKS
aws eks --region us-east-1 update-kubeconfig --name my-eks-cluster2 >> logs.txt 2>&1

# Apply manifests with forced kubeconfig
kubectl apply -f ./deployment.yaml --validate=false >> logs.txt 2>&1
kubectl apply -f ./service.yaml --validate=false >> logs.txt 2>&1

touch abc123.txt
