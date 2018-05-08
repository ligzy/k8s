#!/bin/bash

kubernetes_version=v1.10.2
flannel_version=v0.10.0
kube_pause_version=3.1

kube_dns_version=1.14.10
kube_dashboard_version=v1.8.3
kube_heapster_version=v1.5.2
kube_heapster_grafana_version=v4.4.3
kube_heapster_influxdb_version=v1.3.3

#docker pull rewind/kube-proxy-amd64:$kubernetes_version
#docker tag rewind/kube-proxy-amd64:$kubernetes_version k8s.gcr.io/kube-proxy-amd64:$kubernetes_version
#
#docker pull rewind/flannel:$flannel_version-amd64
#docker tag rewind/flannel:$flannel_version-amd64 quay.io/coreos/flannel:$flannel_version-amd64

docker pull rewind/pause-amd64:$kube_pause_version
docker tag rewind/pause-amd64:$kube_pause_version k8s.gcr.io/pause-amd64:$kube_pause_version

# kube-dns image
docker pull rewind/k8s-dns-kube-dns-amd64:$kube_dns_version
docker tag rewind/k8s-dns-kube-dns-amd64:$kube_dns_version k8s.gcr.io/k8s-dns-kube-dns-amd64:$kube_dns_version
docker pull rewind/k8s-dns-dnsmasq-nanny-amd64:$kube_dns_version
docker tag rewind/k8s-dns-dnsmasq-nanny-amd64:$kube_dns_version k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:$kube_dns_version
docker pull rewind/k8s-dns-sidecar-amd64:$kube_dns_version
docker tag rewind/k8s-dns-sidecar-amd64:$kube_dns_version k8s.gcr.io/k8s-dns-sidecar-amd64:$kube_dns_version

# Dashboard image
docker pull rewind/kubernetes-dashboard-amd64:$kube_dashboard_version
docker tag rewind/kubernetes-dashboard-amd64:$kube_dashboard_version k8s.gcr.io/kubernetes-dashboard-amd64:$kube_dashboard_version

# heapster image
docker pull rewind/heapster-amd64:$kube_heapster_version
docker tag rewind/heapster-amd64:$kube_heapster_version gcr.io/google_containers/heapster-amd64:$kube_heapster_version
docker pull rewind/heapster-grafana-amd64:$kube_heapster_grafana_version
docker tag rewind/heapster-grafana-amd64:$kube_heapster_grafana_version gcr.io/google_containers/heapster-grafana-amd64:$kube_heapster_grafana_version
docker pull rewind/heapster-influxdb-amd64:$kube_heapster_influxdb_version
docker tag rewind/heapster-influxdb-amd64:$kube_heapster_influxdb_version gcr.io/google_containers/heapster-influxdb-amd64:$kube_heapster_influxdb_version

