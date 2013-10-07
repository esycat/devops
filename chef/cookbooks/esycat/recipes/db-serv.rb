package "mysql-server"

apt_repository "rethinkdb" do
    uri "http://ppa.launchpad.net/rethinkdb/ppa/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "11D62AD6"
end

