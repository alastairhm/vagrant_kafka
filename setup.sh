#!/bin/bash
wget http://apache.mirror.anlx.net/kafka/0.10.1.0/kafka_2.11-0.10.1.0.tgz -O /home/ubuntu/kafka.tgz
mkdir /home/ubuntu/kafka
tar -xf kafka.tgz -C /home/ubuntu/kafka
ln -s /vagrant/tmux.conf /home/ubuntu/.tmux.conf
ln -s /home/ubuntu/kafka/kafka_2.11-0.10.1.0 /home/ubuntu/kafka/kafka
