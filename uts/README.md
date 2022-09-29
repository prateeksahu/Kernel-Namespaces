Script to change hostname of machine inside a new uts namespace.

Run the `uts_ns.sh` inside a new mount ns created by `sudo unshare -u /bin/bash/`.

Verify the hostname `uname -n` from inside and outside the container namespace.
