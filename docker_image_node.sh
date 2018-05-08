#!/bin/bash

#docker pull rewind/kube-proxy-amd64:v1.10.0
#docker tag rewind/kube-proxy-amd64:v1.10.0 k8s.gcr.io/kube-proxy-amd64:v1.10.0

#docker pull rewind/flannel:v0.10.0-amd64
#docker tag rewind/flannel:v0.10.0-amd64 quay.io/coreos/flannel:v0.10.0-amd64

docker pull rewind/pause-amd64:3.1
docker tag rewind/pause-amd64:3.1 k8s.gcr.io/pause-amd64:3.1

# kube-dns image
docker pull rewind/k8s-dns-kube-dns-amd64:1.14.8
docker pull rewind/k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker pull rewind/k8s-dns-sidecar-amd64:1.14.8
docker tag rewind/k8s-dns-kube-dns-amd64:1.14.8 k8s.gcr.io/k8s-dns-kube-dns-amd64:1.14.8
docker tag rewind/k8s-dns-dnsmasq-nanny-amd64:1.14.8 k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker tag rewind/k8s-dns-sidecar-amd64:1.14.8 k8s.gcr.io/k8s-dns-sidecar-amd64:1.14.8

# Dashboard image
docker pull rewind/kubernetes-dashboard-amd64:v1.8.3
docker tag rewind/kubernetes-dashboard-amd64:v1.8.3 k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3

# heapster image
docker pull rewind/heapster-amd64:v1.5.2
docker pull rewind/heapster-grafana-amd64:v4.4.3
docker pull rewind/heapster-influxdb-amd64:v1.3.3
docker tag rewind/heapster-amd64:v1.5.2 gcr.io/google_containers/heapster-amd64:v1.5.2
docker tag rewind/heapster-grafana-amd64:v4.4.3 gcr.io/google_containers/heapster-grafana-amd64:v4.4.3
docker tag rewind/heapster-influxdb-amd64:v1.3.3 gcr.io/google_containers/heapster-influxdb-amd64:v1.3.3

