#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y bind9 bind9-dnsutils bind9-doc
cp /vagrant/config/named /etc/default
cp /vagrant/config/named.conf.options /etc/bind
cp /vagrant/config/named.conf.local /etc/bind
cp /vagrant/config/danieldm.test.dns /var/lib/bind
cp /vagrant/config/danieldm.test.rev /var/lib/bind
service named restart