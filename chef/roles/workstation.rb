name 'desktop'
description 'Work Station'

run_list  [
    'recipe[esycat::repos]',

    'recipe[esycat::sys-utils]',
    'recipe[esycat::fs-utils]',
    'recipe[esycat::net-utils]',
    'recipe[esycat::commons]',

    'recipe[esycat::dev-utils]',
    'recipe[esycat::dev-java]',
    'recipe[esycat::dev-web]',
    'recipe[esycat::dev-apps]',

    'recipe[esycat::users]',
    'recipe[esycat::hosts]',

    'recipe[esycat::sys-ubuntu]',
    # 'recipe[esycat::sys-gnome]',

    'recipe[esycat::ws-settings]',
    'recipe[esycat::ws-apps]',
    'recipe[esycat::web-apps]',
    'recipe[esycat::media-apps]'
]
