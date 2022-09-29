Script to change the user identity inside a custom new namespace.

By default, `unshare -U` changes current user/group ID and sets them to least privileged user `nobody`/`65534`.

User role and user id/group id can be verifiied by running `whoami` or `id -u`/`id -g`.

Compile the userns\_child\_exec for a richer feel of the capabilities of being able to change user namespaces.
`./userns_child_exec -p -m -U -M '0 1000 1' -G '0 1000 1' bash` changes current user (typically `1000`) to root (`0`) inside the container namespace. We see how an unprivileged container can acquire full/root priviledges inside its own namespace.
This is ever more probelmatic since we do not need `sudo` to change our own usernamespaces i.e. `unshare -U` doesn't need `sudo` like other `unshare` API calls.
