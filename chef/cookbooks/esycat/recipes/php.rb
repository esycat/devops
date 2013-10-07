include_recipe "php::package"
include_recipe "php::module_apc"
include_recipe "php::module_curl"
include_recipe "php::module_fpdf"
include_recipe "php::module_gd"
include_recipe "php::module_memcache"
include_recipe "php::module_mysql"
include_recipe "php::module_sqlite3"

package "php5-cli"
package "php5-geoip"

package "php-pear"

php_pear_channel "pear.phing.info"
php_pear_channel "pear.phpunit.de"

php_pear "HTTP"

# php_pear "phing/phing"
# php_pear "phpunit/phpunit"
