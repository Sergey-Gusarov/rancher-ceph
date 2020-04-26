#!/bin/bash

# install ceph-common from all k8s-nodes
wget -q -O- 'https://download.ceph.com/keys/release.asc' | apt-key add - && echo deb https://download.ceph.com/debian-luminous/ $(lsb_release -sc) main | tee /etc/apt/sources.list.d/ceph.list

apt update && apt install ceph-common -y && modprobe rbd
