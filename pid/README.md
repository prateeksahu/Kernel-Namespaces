Script to isolate current process and assign new PID namespace. Current process assumed PID 1 in new namespace.

Run the `pid_ns.sh` inside a new mount ns created by `sudo unshare -fp --mount-proc`.

Verify the PID of `sleep` process from inside and outside the container namespace using `ps aux`. You can filter out the appropriate process outside the container using `ps aux | grep sleep`.
