#!/bin/bash

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

kubectl create namespace argocd

helm install argo-cd argo/argo-cd --version 7.7.16 --namespace argocd
