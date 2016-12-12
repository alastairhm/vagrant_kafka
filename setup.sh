wget http://apache.mirror.anlx.net/kafka/0.10.1.0/kafka_2.11-0.10.1.0.tgz -O /home/ubuntu/kafka.tgz
mkdir /home/ubuntu/kafka
tar -xf kafka.tgz -C /home/ubuntu/kafka

bin/zookeeper-server-start.sh config/zookeeper.properties > zookeeper.log &
bin/kafka-server-start.sh config/server.properties > kafka.log &

bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
bin/kafka-topics.sh --list --zookeeper localhost:2181

bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test