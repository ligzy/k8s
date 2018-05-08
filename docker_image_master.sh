#!/bin/bash

etcd_version=3.1.12
kubernetes_version=v1.10.2
flannel_version=v0.10.0
kube_pause_version=3.1

kube_dns_version=1.14.10
kube_dashboard_version=v1.8.3
kube_heapster_version=v1.5.2
kube_heapster_grafana_version=v4.4.3
kube_heapster_influxdb_version=v1.3.3

docker pull rewind/etcd-amd64:$etcd_version
#docker tag rewind/etcd-amd64:$etcd_version k8s.gcr.io/etcd-amd64:$etcd_version


docker pull rewind/kube-apiserver-amd64:$kubernetes_version
docker pull rewind/kube-scheduler-amd64:$kubernetes_version
docker pull rewind/kube-controller-manager-amd64:$kubernetes_version
#docker pull rewind/pause-amd64:$kube_pause_version
#docker pull rewind/kube-proxy-amd64:$kubernetes_version
#docker pull rewind/flannel:$flannel_version-amd64

#docker tag rewind/kube-apiserver-amd64:$kubernetes_version k8s.gcr.io/kube-apiserver-amd64:$kubernetes_version
#docker tag rewind/kube-scheduler-amd64:$kubernetes_version k8s.gcr.io/kube-scheduler-amd64:$kubernetes_version
#docker tag rewind/kube-controller-manager-amd64:$kubernetes_version k8s.gcr.io/kube-controller-manager-amd64:$kubernetes_version
#docker tag rewind/pause-amd64:$kube_pause_version k8s.gcr.io/pause-amd64:$kube_pause_version
#docker tag rewind/kube-proxy-amd64:$kubernetes_version k8s.gcr.io/kube-proxy-amd64:$kubernetes_version
#docker tag rewind/flannel:$flannel_version-amd64 quay.io/coreos/flannel:$flannel_version-amd64
