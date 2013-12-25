#!/bin/sh

. /etc/default/chef-client

script_dir="$(dirname $(realpath $0))"
#config_dir="${script_dir}/config"
config_dir="/etc/chef"

chef-solo -c "${config_dir}/solo.rb" -j "${config_dir}/node.json"
