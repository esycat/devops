include_recipe 'esycat::net-utils'
include_recipe 'esycat::dev-utils'
include_recipe 'esycat::dev-java'
include_recipe 'esycat::dev-web'
include_recipe 'esycat::python'
#include_recipe 'esycat::sys-gnome'
include_recipe 'esycat::sys-ubuntu'
include_recipe 'esycat::apps-web'
#include_recipe 'esycat::protobuf'

apt_repository 'dropbox' do
    uri          'http://linux.dropbox.com/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
end

apt_repository 'yandex' do
    uri          'http://repo.yandex.ru/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
end

apt_repository 'ps3ms' do
    uri          'http://deb.paissad.net/'
    distribution 'unstable'
    components   ['contrib', 'non-free']
end

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
include_recipe 'esycat::settings'

package 'xclip'
package 'gimp'
package 'nitrogen'
package 'vlc'

package 'sublime-text'
package 'gitg'
package 'kdiff3'
#package 'finalterm'
package 'virtualbox'

package 'compizconfig-settings-manager'

hostsfile_entry '192.168.1.37' do
    hostname  'devroom'
    aliases   ['devroom.wm']
    action    :create_if_missing
end

hostsfile_entry '192.168.1.19' do
    hostname  'bs'
    action    :create_if_missing
end

