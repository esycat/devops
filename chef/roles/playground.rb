name 'playground'
description 'Development Server'

run_list  [
    'role[server]',

    'role[app-serv]',
    'role[db-serv]',

    'recipe[esycat::users]'
]
