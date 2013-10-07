maintainer       "Eugene Janusov"
maintainer_email "esycat@gmail.com"
license          "Apache 2.0"
description      ""
version          "0.3"

depends "apt"
depends "php"
depends "mysql"

%w{ debian ubuntu amazon }.each do |os|
    supports os
end
