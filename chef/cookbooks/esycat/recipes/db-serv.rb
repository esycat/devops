package 'mysql-client'
package 'mysql-server'

apt_repository 'rethinkdb' do
    uri          'http://ppa.launchpad.net/rethinkdb/ppa/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          '11D62AD6'
end

apt_repository 'mongodb' do
    uri          'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
    distribution 'dist'
    components   ['10gen']
    keyserver    'keyserver.ubuntu.com'
    key          '7F0CEB10'
end
