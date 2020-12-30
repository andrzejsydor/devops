#!/bin/bash
kubectl apply -f load-balancer.yaml

kubectl expose deployment hello-world --type=LoadBalancer --name=my-service
