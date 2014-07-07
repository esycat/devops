maintainer       'Eugene Janusov'
maintainer_email 'esycat@gmail.com'
license          'Apache 2.0'
version          '0.4'
description      ''
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

# Chef-related stuff (transitive dependencies)
# depends 'install_from'
# depends 'chef_handler'
# depends 'ark'
# depends 'cutlery'

depends 'apt'
depends 'homebrew'

depends 'build-essential'
depends 'authbind'
depends 'openssl'
depends 'postfix'

depends 'java'
depends 'gradle'
depends 'glassfish'
depends 'nodejs'
depends 'python'
depends 'php'

depends 'mysql'
depends 'rethinkdb'

# depends 'docker'

depends 'xml'
depends 'aws'

depends 'hostsfile'
depends 'gsettings'

%w{ debian ubuntu amazon mac_os_x }.each do |os|
    supports os
end
