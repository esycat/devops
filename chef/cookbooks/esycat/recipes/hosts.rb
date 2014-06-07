hostsfile_entry '192.168.1.37' do
    hostname  'devroom'
    aliases   ['devroom.wm']
    action    :create_if_missing
end

hostsfile_entry '192.168.1.19' do
    hostname  'bs'
    action    :create_if_missing
end
