name 'db-serv'
description 'Database Server'

run_list [
    'role[server]',

    'recipe[mysql::server]',
    'recipe[rethinkdb]',

    'recipe[esycat::db-serv]'
]
