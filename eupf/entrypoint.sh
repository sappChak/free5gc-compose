#!/bin/env sh

# Mount bpffs and debugfsf for checking eBPF logs 
# if [[ $(/bin/mount | /bin/grep /sys/fs/bpf -c) -eq 0 ]]; then
#    /bin/mount bpffs /sys/fs/bpf -t bpf;
# fi
# if [[ $(/bin/mount | /bin/grep /sys/kernel/debug -c) -eq 0 ]]; then
#    /bin/mount debugfs /sys/kernel/debug -t debugfs;
# fi
# apk update && apk add bpftool

# Run app replacing current shell (to preserve signal handling) and forward cmd arguments
exec /app/bin/eupf "$@"
