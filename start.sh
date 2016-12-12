#!/bin/bash
export KAFKA_HOME=/home/ubuntu/kafka/kafka
$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties > /home/ubuntu/zookeeper.log &
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties > /home/ubuntu/kafka.log &
