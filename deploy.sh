#!/bin/bash
set -e  # Exit immediately if a command fails
cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest

LOG_FILE="./logs.txt"
touch "$LOG_FILE"
chmod 777 "$LOG_FILE"

# Update kubeconfig for EKS
aws eks --region us-east-1 update-kubeconfig --name my-eks-cluster2 >> "$LOG_FILE" 2>&1

# Apply Deployment and restart to pull the latest image
kubectl apply -f ./deployment.yaml -n hello-world >> "$LOG_FILE" 2>&1
kubectl rollout restart deployment ekslove-deployment -n hello-world >> "$LOG_FILE" 2>&1

# Apply Service
kubectl apply -f ./service.yaml -n hello-world >> "$LOG_FILE" 2>&1

touch abc123.txt
