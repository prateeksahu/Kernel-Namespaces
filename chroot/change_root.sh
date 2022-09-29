#!/bin/bash

mkdir -p new_root/{bin,lib,lib64}
cp /bin/bash new_root/bin
cp /lib64/ld-linux-x86-64.so* new_root/lib64
cp /lib/x86_64-linux-gnu/{libc.so*,libselinux.so*,libpcre.so*,libdl.so.*,libpthread.so*,libtinfo.so*,libreadline.so*} new_root/lib
sudo chroot new_root
