#!/bin/bash
sudo su
{
  cd /home/ubuntu/kubernets_cluster/tws-e-commerce-app_hackathon/Kubernetstest
  touch abc.txt
  kubectl apply -f ./deployment.yaml
  kubectl apply -f ./service.yaml
  touch tested
} >> ./logs 2>&1
