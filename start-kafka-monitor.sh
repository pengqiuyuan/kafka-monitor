#!/bin/sh

KUBEPATH=`pwd`/localhost
ZK_POD_NAME=`$KUBEPATH/kubectl get pods |grep zoo | awk '{print $1 }'`
ZK_IP=`$KUBEPATH/kubectl  describe pod $ZK_POD_NAME | grep IP | sed -E 's/IP:[[:space:]]+//' | head -1`

echo $ZK_IP



docker run --restart=unless-stopped -e ZOOKEEPER:$ZK_IP -p 4080:4080 --name kafka-monitor -d wpad/kafka-monitor







