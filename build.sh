#!/bin/sh

set -xe

# Build AMD64 image
docker build -t mruettgers/sshd -f targets/amd64/Dockerfile .
