#!/bin/bash

echo "=========================================================="
echo "Starting load traffic on OCP"
echo "=========================================================="

echo "----------------------------------------------------------"
echo "oc -n dt-orders delete deploy load-traffic"
echo "----------------------------------------------------------"
oc -n dt-orders delete deploy load-traffic

echo "----------------------------------------------------------"
echo "oc -n dt-orders get pods"
echo "----------------------------------------------------------"
oc -n dt-orders get pods