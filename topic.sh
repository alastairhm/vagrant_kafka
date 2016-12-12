#!/bin/bash
export KAFKA_HOME=/home/ubuntu/kafka/kafka
$KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
$KAFKA_HOME/bin/kafka-topics.sh --list --zookeeper localhost:2181
# bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
# bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning