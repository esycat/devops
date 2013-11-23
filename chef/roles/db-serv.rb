name "db-serv"
description "Database Server"
run_list [
    "role[base-serv]",
    "recipe[mysql::server]",
    "recipe[rethinkdb]",
    "recipe[esycat::db-serv]"
]
