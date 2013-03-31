#!/bin/sh

script_dir="$(dirname $(readlink -f $0))"
config_dir="${script_dir}/config"

chef-solo -c ${config_dir}/solo.rb -j ${config_dir}/node.json
