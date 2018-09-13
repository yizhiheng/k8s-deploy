# k8s-deploy

A docker image that has `kubectl`, `kops` and `helm` installed.

## Usage
```
docker build -t yizhiheng/k8s-deploy:latest .
docker run -v ~/.kube:/root/.kube -it yizhiheng/k8s-deploy /bin/sh
...
```