Script to limit memory alloed to a process inside a new cgroup namespace.

Build the `memory.rs`: `rustc memory.rs`

Run the `cgroup_ns.sh` to create a demo cgroup and limit its memory to under 100MB.

Running the script runs `memory.rs` which gets killed when it requests for 100MB of memory.
