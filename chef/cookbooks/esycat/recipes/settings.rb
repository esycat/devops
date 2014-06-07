gsettings 'org.gnome.desktop.wm.keybindings' do
    option 'switch-input-source'
    user 'esycat'
    value ['Caps_Lock']
end

gsettings 'org.gnome.settings-daemon.plugins.media-keys' do
    option 'screensaver'
    user 'esycat'
    value ['Scroll_Lock']
end

gsettings 'org.gnome.nautilus.preferences' do
    option 'default-folder-viewer'
    user 'esycat'
    value 'list-view'
end

gsettings 'org.gnome.desktop.input-sources' do
    option 'sources'
    user 'esycat'
    value '[("xkb", "us"), ("xkb", "ru")]'
end

gsettings 'org.gnome.settings-daemon.peripherals.keyboard' do
    option 'numlock-state'
    user 'esycat'
    value 'off'
end

gsettings 'org.gnome.libgnomekbd.desktop' do
    option 'group-per-window'
    user 'esycat'
    value 'true'
end

gsettings 'org.gnome.desktop.input-sources' do
    option 'xkb-options'
    user 'esycat'
    value '["compose:ralt"]'
end
