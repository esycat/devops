package 'autofs'
package 'nfs-client'
package 'nfs-kernel-server'
package 'sshfs'
package 'fusesmb'
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
