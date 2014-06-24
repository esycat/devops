package 'gem'

gem_package 'sass'
gem_package 'scss-lint'
gem_package 'compass'

# package 'nodejs'
# package 'npm'

include_recipe 'nodejs'
include_recipe 'nodejs::npm'

nodejs_npm 'request'
nodejs_npm 'async'
nodejs_npm 'socket.io'
nodejs_npm 'jquery'
nodejs_npm 'bower'
