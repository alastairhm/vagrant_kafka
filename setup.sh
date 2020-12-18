#!/bin/bash
wget -q http://apache.mirror.anlx.net/kafka/0.10.1.0/kafka_2.11-0.10.1.0.tgz -O /home/ubuntu/kafka.tgz
mkdir /home/ubuntu/kafka
tar -xf kafka.tgz -C /home/ubuntu/kafka
ln -s /vagrant/tmux.conf /home/ubuntu/.tmux.conf
ln -s /home/ubuntu/kafka/kafka_2.11-0.10.1.0 /home/ubuntu/kafka/kafka
echo -e "\nexport PATH=\$PATH:/vagrant:/home/ubuntu/kafka/kafka/bin\n" >> /home/ubuntu/.bashrc
echo -e "export KAFKA_HOME=/home/ubuntu/kafka/kafka\n" >> /home/ubuntu/.bashrc
chown -R ubuntu. /home/ubuntu/kafka
rm -f /home/ubuntu/kafka.tgz
/vagrant/start.sh
