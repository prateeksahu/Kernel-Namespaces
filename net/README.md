Script to create a new network namespaces, play around with the loopback interface and new virtual ethernet interfaces.

Run the `net_ns.sh` inside a new network ns created by `sudo unshare -n`.

Run the `net_ns_veth.sh` from the host to create a virtual ethernet pair and connect the host with the newly created network namespace.

