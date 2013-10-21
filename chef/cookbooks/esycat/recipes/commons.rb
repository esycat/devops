include_recipe "esycat::stat-utils"
include_recipe "esycat::fs-utils"

package "coreutils"
package "bash-completion"
package "zsh"
package "wget"
package "vim"
package "vim-scripts"
package "mc"
package "p7zip-full"
package "realpath"
package "whois"
package "rsync"
package "xpdf"
package "pwgen"
package "git"
package "ssh"

if %w{debian}.include?(node.platform_family)
    package "aptitude"
    package "software-properties-common"
    package "python-software-properties"
end
