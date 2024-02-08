#!/bin/bash

kapp deploy -a default-ns-rbac -f https://raw.githubusercontent.com/vmware-tanzu/carvel-kapp-controller/develop/examples/rbac/default-ns.yml -y
kapp deploy -a test-pkg -f package.yaml -y
kapp deploy -a test-pkgi -f package-install.yaml -y
kubectl get cm k8s-cluster-info -o yaml