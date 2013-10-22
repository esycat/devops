include_recipe 'esycat::net-utils'
include_recipe 'esycat::dev-utils'
include_recipe 'esycat::java'
include_recipe 'esycat::python'

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

package 'gnome-tweak-tool'
package 'gnome-shell-extensions'

package 'chromium-browser'
package 'chromium-browser-l10n'
package 'chromium-codecs-ffmpeg'
package 'chromium-codecs-ffmpeg-extra'
package 'webaccounts-chromium-extension'

package 'firefox'
package 'firefox-globalmenu'

package 'thunderbird'
package 'thunderbird-gnome-support'
package 'thunderbird-globalmenu'

package 'transmission-gtk'
package 'transmission-cli'

package 'gajim'
package 'gimp'
package 'nitrogen'

package 'gitg'
package 'sublime-text'
