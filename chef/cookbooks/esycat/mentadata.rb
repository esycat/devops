maintainer       "Eugene Janusov"
maintainer_email "esycat@gmail.com"
license          "Apache 2.0"
description      ""
version          "0.4"

depends "cutlery"
depends "apt"
depends "homebrew"

depends "openssl"
depends "postfix"

depends "java"
depends "gradle"
depends "glassfish"

depends "python"
depends "php"

depends "mysql"
depends "rethinkdb"

depends "authbind"
depends "install_from"
depends "chef_handler"
depends "build-essential"
depends "aws"
depends "xml"

%w{ debian ubuntu amazon mac_os_x }.each do |os|
    supports os
end
