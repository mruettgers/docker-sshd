#!bin/sh

ARGS=${ARGS:-""}

# Generate host keys if not present
ssh-keygen -A

# Do not detach (-D), log to stderr (-e)
exec /usr/sbin/sshd -D -e $ARGS