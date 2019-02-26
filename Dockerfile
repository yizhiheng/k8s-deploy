FROM python:rc-alpine3.9

USER root

RUN apk --no-cache add curl git

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.3/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN curl -LO https://github.com/kubernetes/kops/releases/download/1.11.0/kops-linux-amd64
RUN chmod +x kops-linux-amd64
RUN mv kops-linux-amd64 /usr/local/bin/kops

RUN curl -LO https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-linux-amd64.tar.gz
RUN tar -zxvf helm-v2.12.3-linux-amd64.tar.gz
RUN mv /linux-amd64/helm /usr/local/bin/helm

RUN pip3 install awscli --upgrade