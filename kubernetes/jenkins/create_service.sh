#!/usr/bin/env bash
gcloud config set project $1

kubectl create -f kubernetes/jenkins/jenkins.yaml 
kubectl create -f kubernetes/jenkins/service_jenkins.yaml 
kubectl create -f kubernetes/jenkins/build_agent.yaml 
kubectl create -f kubernetes/jenkins/ssl_secrets.yaml 
kubectl create -f kubernetes/jenkins/proxy.yaml 
kubectl create -f kubernetes/jenkins/service_proxy.yaml 

