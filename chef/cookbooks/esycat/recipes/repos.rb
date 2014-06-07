
apt_repository 'google-chrome' do
    uri          'http://dl.google.com/linux/chrome/deb/'
    distribution 'stable'
    components   ['main']
end

apt_repository 'dropbox' do
    uri          'http://linux.dropbox.com/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'pgp.mit.edu'
    key          '5044912E'
end

# apt_repository 'yandex' do
#     uri          'http://repo.yandex.ru/ubuntu'
#     distribution node['lsb']['codename']
#     components   ['main']
# end

# apt_repository 'ps3ms' do
#     uri          'http://deb.paissad.net/'
#     distribution 'unstable'
#     components   ['contrib', 'non-free']
# end

apt_repository 'btsync' do
    uri          'http://ppa.launchpad.net/tuxpoldo/btsync/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          'D294A752'
end

apt_repository 'finalterm' do
    uri          'http://ppa.launchpad.net/finalterm/daily/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          'FD316B5D'
end

apt_repository 'sublime' do
    uri          'http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          'EEA14886'
end
