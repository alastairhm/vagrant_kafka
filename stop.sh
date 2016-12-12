#!/bin/bash
export KAFKA_HOME=/home/ubuntu/kafka/kafka
$KAFKA_HOME/bin/kafka-server-stop.sh
$KAFKA_HOME/bin/zookeeper-server-stop.sh
