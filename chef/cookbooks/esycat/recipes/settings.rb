### Nautilus

gsettings 'org.gnome.nautilus.preferences' do
    option 'default-folder-viewer'
    user 'esycat'
    value 'list-view'
end

gsettings 'org.gnome.nautilus.preferences' do
    option 'sort-directories-first'
    user 'esycat'
    value true
end


### Keyboard

gsettings 'org.gnome.desktop.input-sources' do
    option 'sources'
    user 'esycat'
    value '[("xkb", "us"), ("xkb", "ru")]'
end

gsettings 'org.gnome.desktop.input-sources' do
    option 'xkb-options'
    user 'esycat'
    value '[
        "apple:alupckeys",
        "compose:ralt",
        "grp_led:caps",
        "numpad:pc",
        "terminate:ctrl_alt_bksp:q"
    ]'
end

gsettings 'org.gnome.libgnomekbd.desktop' do
    option 'group-per-window'
    user 'esycat'
    value true
end

gsettings 'org.gnome.libgnomekbd.indicator' do
    option 'show-flags'
    user 'esycat'
    value true
end

gsettings 'org.gnome.settings-daemon.peripherals.keyboard' do
    option 'numlock-state'
    user 'esycat'
    value 'off'
end

gsettings 'org.gnome.desktop.wm.keybindings' do
    option 'switch-input-source'
    user 'esycat'
    value ['Caps_Lock']
end

gsettings 'org.gnome.settings-daemon.plugins.media-keys' do
    option 'screensaver'
    user 'esycat'
    value ['<Primary>Escape', 'Scroll_Lock']
end


### Desktop

gsettings 'org.gnome.desktop.wm.preferences' do
    option 'workspace-names'
    user 'esycat'
    value '[
        "Main",
        "Communication",
        "Devel"
    ]'
end

gsettings 'org.gnome.desktop.screensaver' do
    option 'lock-delay'
    user 'esycat'
    value '5'
end

gsettings 'org.gnome.desktop.interface' do
    option 'clock-format'
    user 'esycat'
    value '24h'
end

gsettings 'org.gnome.desktop.interface' do
    option 'clock-show-date'
    user 'esycat'
    value true
end

gsettings 'org.gnome.desktop.interface' do
    option 'show-input-method-menu'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-calendar'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-clock'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-date'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-day'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-events'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-locations'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-auto-detected-location'
    user 'esycat'
    value false
end

gsettings 'com.canonical.indicator.datetime' do
    option 'show-week-numbers'
    user 'esycat'
    value true
end

gsettings 'com.canonical.indicator.datetime' do
    option 'locations'
    user 'esycat'
    value '[
        "America/Los_Angeles San Francisco",
        "America/Chicago Chicago",
        "America/New_York New York",
        "UTC UTC",
        "Europe/Berlin Berlin",
        "Europe/Moscow Moscow",
        "Australia/Perth Perth"
    ]'
end


gsettings 'com.canonical.Unity.Launcher' do
    option 'favorites'
    user 'esycat'
    value '[
        "application://nautilus.desktop",
        "application://gnome-terminal.desktop",
        "application://google-chrome-beta.desktop",
        "application://firefox.desktop",
        "application://thunderbird.desktop",
        "application://skype.desktop",
        "application://sublime-text.desktop",
        "application://idea.desktop",
        "application://gitg.desktop",
        "application://virtualbox.desktop",
        "unity://running-apps",
        "unity://expo-icon",
        "unity://devices"
    ]'
end

gsettings 'com.canonical.Unity.Lenses' do
    option 'disabled-scopes'
    user 'esycat'
    value '[
        "more_suggestions-amazon.scope",
        "more_suggestions-u1ms.scope",
        "more_suggestions-populartracks.scope",
        "music-musicstore.scope",
        "more_suggestions-ebay.scope",
        "more_suggestions-ubuntushop.scope",
        "more_suggestions-skimlinks.scope"
    ]'
end
