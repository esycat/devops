apt_repository 'mongodb' do
    uri          'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
    distribution 'dist'
    components   ['10gen']
    keyserver    'keyserver.ubuntu.com'
    key          '7F0CEB10'
end
