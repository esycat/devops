include_recipe 'esycat::java'

package 'openjdk-7-jdk'
package 'default-jdk'

package 'scala'
package 'groovy'

include_recipe 'gradle::tarball'
