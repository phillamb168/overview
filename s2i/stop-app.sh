#!/bin/bash

echo "=========================================================="
echo "Stopping app on OCP"
echo "=========================================================="

echo "----------------------------------------------------------"
echo "oc delete all --selector project=dt-orders"
echo "----------------------------------------------------------"
oc delete all --selector project=dt-orders

sleep 30

echo "----------------------------------------------------------"
echo "kubectl -n dt-orders get pods"
echo "----------------------------------------------------------"
kubectl -n dt-orders get pods