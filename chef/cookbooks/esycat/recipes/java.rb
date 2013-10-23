apt_repository 'webupd8team-java' do
    uri          'http://ppa.launchpad.net/webupd8team/java/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
end

package 'openjdk-7-jre'
package 'default-jre'

package 'oracle-java7-installer'
package 'oracle-java8-installer'

#package 'oracle-java7-set-default'
