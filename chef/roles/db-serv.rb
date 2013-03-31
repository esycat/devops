name "db-serv"
description "Database Server"
run_list [
    "role[base-serv]",
    "recipe[esycat::db-serv]"
]

