#!/bin/bash

sudo ip netns add mynet
sudo ip netns list
ls /var/run/netns

sudo ip link add veth0 type veth peer name veth1
sudo ip link show type veth
sudo ip link set veth1 netns mynet
sudo ip netns exec mynet ip addr add 172.2.0.1/24 dev veth1
sudo ip netns exc mynet ip link set dev veth1 up
sudo ip addr add 172.2.0.2/24 dev veth0
sudo ip link set dev veth0 up
ping -c1 172.2.0.1
sudo ip netns exec mynet ping -c1 172.2.0.2

