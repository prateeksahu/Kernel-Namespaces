Script to create a temporary mount point inside a new mnt namespace.

Run the `mount_ns.sh` inside a new mount ns created by `sudo unshare -m`.

Verify the visibility of `mount_dir` from inside and outside the container namespace.
