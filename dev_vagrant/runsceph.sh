#!/bin/bash
echo "==========  Fetching CEPH repo  =========="
source /vagrant/prxy
git clone https://github.com/shivanshu21/ceph.git
cd /root/gitcode/ceph
git checkout hammer_cross_account
echo "==========  Installing dependencies =========="
./install-deps.sh
echo "==========  Autogen =========="
./autogen.sh
echo "========== Configure  =========="
./configure
#ceph/configure.sh
echo "==========  Make  =========="
make -j4
echo "==========  Running Vstart  =========="
cd ./src
unset http_proxy
unset https_proxy
./vstart.sh -n -x -l -r
