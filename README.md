# kapp-controller-k8s-version-distribution-check
This demonstrates a Carvel package that can determine the Kubernetes version of the cluster that it is being installed in and determine whether or not it is an OpenShift cluster

### Take it for a spin
1. Run `install-resources.sh` to install required RBAC, Package and PackageInstall resources. It then inspects ConfigMap created due to installation
2. Run `clean-up.sh` to clean up these resources

### Expected results
On non OpenShift clusters the data section of the created config map would look like,
```yaml
data:
  is_openshift: "false"
  kubernetes_version: 1.25.3 # this would be the version of cluster in use
```
While for OpenShift clusters it would be,
```yaml
data:
  is_openshift: "true"
  kubernetes_version: 1.25.3 # this would be the version of cluster in use
```
