#!/bin/env sh

# Mount bpffs and debugfs if not present already
# if [[ $(/bin/mount | /bin/grep /sys/fs/bpf -c) -eq 0 ]]; then
#    /bin/mount bpffs /sys/fs/bpf -t bpf;
# fi
# if [[ $(/bin/mount | /bin/grep /sys/kernel/debug -c) -eq 0 ]]; then
#    /bin/mount debugfs /sys/kernel/debug -t debugfs;
# fi
# if [[ $(/bin/mount | /bin/grep /sys/kernel/tracing -c) -eq 0 ]]; then
#    /bin/mount tracefs /sys/kernel/tracing -t tracefs;
# fi
# apk update && apk add bpftool

# Update arp table for bpf_fib_lookup to work
ping psa-upf.free5gc.org -c 5

# Run app replacing current shell (to preserve signal handling) and forward cmd arguments
exec /app/bin/eupf "$@"
