package 'ssh'
package 'curl'
package 'httpie'
package 'wget'

package 'autofs'
package 'sshfs'
package 'fusesmb'
package 'nfs-client'
package 'nfs-kernel-server'

package 'snmp'
package 'snmpd'
package 'ethtool'
package 'netcat-openbsd'

service 'autofs' do
    action [ :enable, :start ]
end

service 'nfs-kernel-server' do
    action [ :enable, :start ]
end
