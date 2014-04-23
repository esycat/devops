include_recipe 'esycat::net-utils'
include_recipe 'esycat::dev-utils'
include_recipe 'esycat::dev-java'
include_recipe 'esycat::dev-web'
include_recipe 'esycat::python'
include_recipe 'esycat::protobuf'
#include_recipe 'esycat::sys-gnome'
include_recipe 'esycat::sys-ubuntu'
include_recipe 'esycat::apps-web'

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
end


package 'xclip'
package 'gimp'
package 'nitrogen'

package 'finalterm'
package 'sublime-text'
package 'gitg'
package 'kdiff3'

