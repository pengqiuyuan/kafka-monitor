#!/bin/sh

java -cp KafkaOffsetMonitor-assembly-0.2.1.jar \
     com.quantifind.kafka.offsetapp.OffsetGetterWeb \
     --zk zookeeper \
     --port ${KAFKA_MONITOR_PORT} \
     --refresh 10.seconds \
     --retain 2.days 

