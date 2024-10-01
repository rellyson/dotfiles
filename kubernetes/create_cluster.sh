#!/bin/bash

read -p 'cluster name: ' cluster_name

# cluster name input validation
if [ -z "$cluster_name" ]
then
    echo 'Name cannot be blank. Please try again!'
    exit 0
fi

# Cluster creation
echo "Creating cluster $cluster_name with ingress-nginx and kube-prom..."

k3d cluster create $cluster_name --config config/k3d-cluster.yaml

# Install kube-prom deployment via helm
echo "Installing kube-prom..."

helm upgrade --install kube-prom prometheus-community/kube-prometheus-stack \
--namespace monitoring --create-namespace \
--values manifests/chart-values/kube-prom.yaml --wait --timeout 120s

# Install ingress-nginx
echo "Installing ingress-nginx..."

kubectl apply -f manifests/ingress-nginx-deploy.yaml

echo "Cluster $cluster_name created. Enjoy! 🚀"
