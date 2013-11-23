script_dir = File.dirname(File.realpath(__FILE__))
config_dir = File.realpath(File.join(script_dir, '..'))

cookbook_path [
    '/var/chef/cookbooks',
    File.realpath(File.join(config_dir, 'cookbooks'))
]

# role_path [
#     '/var/chef/roles',
#     File.realpath(File.join(config_dir, 'roles'))
# ]

role_path '/var/chef/roles'
