#!/bin/bash

ibmcloud plugin install -f kubernetes-service
sleep 20
ibmcloud login --apikey $1 -r "us-south"
sleep 20
ibmcloud ks cluster config --cluster $2
sleep 10
ibmcloud ks cluster addon enable kube-terminal --cluster $2
