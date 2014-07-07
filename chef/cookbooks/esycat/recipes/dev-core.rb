include_recipe 'esycat::docker'

apt_repository 'finalterm' do
    uri          'http://ppa.launchpad.net/finalterm/daily/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
    keyserver    'keyserver.ubuntu.com'
    key          'FD316B5D'
end

package 'sublime-text'
package 'gitg'
package 'kdiff3'
package 'virtualbox'
#package 'finalterm'
