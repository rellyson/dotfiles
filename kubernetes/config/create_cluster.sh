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

k3d cluster create $cluster_name --config k3d-config.yaml

# Install kube-prom deployment via helm
echo "Installing kube-prom..."

helm upgrade --install kube-prom prometheus-community/kube-prometheus-stack \
--namespace monitoring --create-namespace \
--values manifests/chart-values/kube-prom.yaml --wait --timeout 120s

# Install ingress-nginx deployment via helm
echo "Installing ingress-nginx..."

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
--namespace ingress-nginx --create-namespace \
--values manifests/chart-values/ingress-nginx.yaml --wait --timeout 60s


echo "Cluster $cluster_name created. Enjoy! 🚀"
