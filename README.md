# kafka-monitor

Dockerized kafka offset monitor tool by https://github.com/quantifind/KafkaOffsetMonitor

docker build -t wpad:kafka-monitor .
docker run --restart=unless-stopped  --link zookeeper:zookeeper -p 4080:4080 --name kafka-monitor -d wpad:kafka-monitor
