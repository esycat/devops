#!/bin/sh

SSH_DIR="${HOME}/.ssh"
CONFIG_FILE="${SSH_DIR}/config"
CONFIG_DIR="${SSH_DIR}/conf.d"

test -f $CONFIG_FILE && mv ${CONFIG_FILE}{,.bak}
cat ${CONFIG_DIR}/*.conf > $CONFIG_FILE
chmod 0400 $CONFIG_FILE

