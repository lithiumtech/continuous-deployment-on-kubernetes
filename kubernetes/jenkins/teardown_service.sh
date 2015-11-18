#!/usr/bin/env bash

kubectl delete svc nginx-ssl-proxy jenkins
kubectl delete rc nginx-ssl-proxy jenkins-builder jenkins-leader
