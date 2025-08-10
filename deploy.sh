#!/bin/bash
cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest
touch logs.txt
chmod 777 logs.txt

sudo aws eks --region us-east-1 update-kubeconfig --name my-eks-cluster2

sudo kubectl apply -f ./deployment.yaml >> logs.txt 2>&1
sudo kubectl apply -f ./service.yaml >> logs.txt 2>&1

touch abc123.txt
