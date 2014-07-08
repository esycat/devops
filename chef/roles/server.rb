name 'server'
description 'Base Server'

run_list [
    'recipe[install_from]',
    'recipe[build-essential]',
    'recipe[apt]',

    'recipe[esycat::repos]',

    'recipe[esycat::sys-utils]',
    'recipe[esycat::fs-utils]',
    'recipe[esycat::net-utils]',
    'recipe[esycat::commons]',

    'recipe[esycat::mail-serv]'
]

