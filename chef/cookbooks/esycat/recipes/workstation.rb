include_recipe 'esycat::net-utils'
include_recipe 'esycat::dev-utils'
include_recipe 'esycat::dev-java'
include_recipe 'esycat::dev-web'
include_recipe 'esycat::python'
#include_recipe 'esycat::sys-gnome'
include_recipe 'esycat::sys-ubuntu'
include_recipe 'esycat::apps-web'

include_recipe 'esycat::repos'
include_recipe 'esycat::settings'
include_recipe 'esycat::hosts'

package 'xclip'
package 'dconf-editor'
package 'gimp'
package 'nitrogen'
package 'vlc'

package 'sublime-text'
package 'gitg'
package 'kdiff3'
#package 'finalterm'
package 'virtualbox'

package 'compizconfig-settings-manager'




