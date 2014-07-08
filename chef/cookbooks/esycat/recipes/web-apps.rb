apt_repository 'google-chrome' do
    uri          'http://dl.google.com/linux/chrome/deb/'
    distribution 'stable'
    components   ['main']
end

apt_repository 'btsync' do
    uri          'http://ppa.launchpad.net/tuxpoldo/btsync/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          'D294A752'
end

apt_repository 'dropbox' do
    uri          'http://linux.dropbox.com/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'pgp.mit.edu'
    key          '5044912E'
end

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

package 'gajim'

package 'transmission-gtk'
package 'transmission-cli'

# package 'btsync'      # single-user, for server deployment
package 'btsync-user' # multi-user, for desktop usage
package 'btsync-gui-gtk'

package 'dropbox'
