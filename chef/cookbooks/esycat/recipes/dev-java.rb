include_recipe 'esycat::java'

package 'openjdk-7-jdk'
package 'default-jdk'

package 'scala'
package 'groovy'

package 'ant'

include_recipe 'gradle::tarball'
