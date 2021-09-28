#!/bin/bash

echo "=========================================================="
echo "Starting app on OCP"
echo "=========================================================="

echo "----------------------------------------------------------"
echo "oc new-project dt-orders"
echo "----------------------------------------------------------"
oc new-project dt-orders

echo "----------------------------------------------------------"
echo "oc new-app nodejs:14-ubi8~https://github.com/dt-orders/frontend.git --context-dir=frontend"
echo "----------------------------------------------------------"
oc new-app nodejs:14-ubi8~https://github.com/dt-orders/frontend.git --context-dir=frontend

echo "----------------------------------------------------------"
echo "oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/catalog-service.git"
echo "----------------------------------------------------------"
oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/catalog-service.git

echo "----------------------------------------------------------"
echo "oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/customer-service.git"
echo "----------------------------------------------------------"
oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/customer-service.git

echo "----------------------------------------------------------"
echo "oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/order-service.git"
echo "----------------------------------------------------------"
oc new-app registry.access.redhat.com/ubi8/openjdk-11~https://github.com/phillamb168/order-service.git

echo "----------------------------------------------------------"
echo "oc -n dt-orders apply -f services.yaml"
echo "----------------------------------------------------------"
oc -n dt-orders apply -f services.yaml

echo "----------------------------------------------------------"
echo "oc -n dt-orders get pods"
echo "----------------------------------------------------------"
sleep 5
oc -n dt-orders get pods