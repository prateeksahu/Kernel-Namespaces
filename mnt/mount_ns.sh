#!/bin/bash

mkdir mount_dir
mount -n -o size=10m -t tmpfs tmpfs mount_dir
df mount_dir
touch mount_dir/1
