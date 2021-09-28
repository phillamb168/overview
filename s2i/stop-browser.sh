#!/bin/bash

echo "=========================================================="
echo "Stopping browser traffic on OCP"
echo "=========================================================="

echo "----------------------------------------------------------"
echo "oc -n dt-orders delete deploy browser-traffic"
echo "----------------------------------------------------------"
oc -n dt-orders delete deploy browser-traffic

echo "----------------------------------------------------------"
echo "oc -n dt-orders get pods"
echo "----------------------------------------------------------"
oc -n dt-orders get pods