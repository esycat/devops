apt_repository 'webupd8team-java' do
    uri          'http://ppa.launchpad.net/webupd8team/java/ubuntu'
    distribution node['lsb']['codename']
    components   ['main']
end

package 'openjdk-7-jdk'
package 'default-jre'
package 'scala'
package 'groovy'
include_recipe 'gradle::tarball'
