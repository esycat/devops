package 'coreutils'

package 'bash-completion'
package 'zsh'

package 'rsync'

package 'vim'
package 'vim-scripts'

package 'nano'
package 'mc'

package 'realpath'
package 'p7zip-full'
package 'whois'
package 'xpdf'
package 'pwgen'
package 'screen'
package 'ntp'

if %w{debian}.include?(node.platform_family)
    package 'aptitude'
    package 'software-properties-common'
    package 'python-software-properties'
end

service 'ntp' do
    action :enable
end
