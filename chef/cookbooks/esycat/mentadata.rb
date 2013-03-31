maintainer       "Eugene Janusov"
maintainer_email "esycat@gmail.com"
license          "Apache 2.0"
description      ""
version          "0.3"

depends "php"

%w{ debian ubuntu amazon }.each do |os|
    supports os
end
