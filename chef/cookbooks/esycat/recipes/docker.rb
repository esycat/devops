apt_repository 'docker' do
    uri          'https://get.docker.io/ubuntu'
    distribution 'docker'
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          '36A1D7869245C8950F966E92D8576A8BA88D21E9'
end

package 'docker.io'
package 'lxc-docker'

link '/usr/local/bin/docker' do
    to '/usr/bin/docker.io'
end

# node.set['docker']['package']['repo_url'] = 'https://get.docker.io/ubuntu'
# include_recipe 'docker::package'
# include_recipe 'docker::systemd'
# include_recipe 'docker::upstart'
