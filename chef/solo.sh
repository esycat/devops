#!/bin/sh

. /etc/default/chef-client

config_dir=$(dirname $CONFIG)

if [ ! -d "$config_dir" ] ; then
    echo "\`${config_dir}\` is not a directory"
    exit 1
fi

chef-solo -c "${config_dir}/solo.rb" -j "${config_dir}/node.json"
