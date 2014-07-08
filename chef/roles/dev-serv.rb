name 'dev-serv'
description 'Development Server'

run_list  [
    'role[base-serv]',
    'role[app-serv]',
    'role[db-serv]',
    'recipe[esycat::dev-serv]',
    'recipe[esycat::users]'
]
