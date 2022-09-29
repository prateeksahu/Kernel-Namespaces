#!/bin/bash

rustc memory.rs
sudo mkdir /sys/fs/cgroup/memory/demo
ls /sys/fs/cgroup/memory/demo
echo 100000000 > /sys/fs/cgroup/memory/demo/memory.limit_in_bytes
echo 0 > /sys/fs/cgroup/memory/demo/memory.swappiness
echo $$ > /sys/fs/cgroup/memory/demo/cgroup.procs
./memory

