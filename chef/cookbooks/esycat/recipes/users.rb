group 'esycat' do
    action :create
    gid 1000
end

user 'esycat' do
    action   :create
    comment  'Eugene Janusov'
    uid      1000
    gid      1000
    home     '/home/esycat'
    shell    '/usr/bin/zsh'
    supports :manage_home => true
end

group 'sudo' do
    action :manage
    members 'esycat'
    append true
end

group 'adm' do
    action :manage
    members 'esycat'
    append true
end
