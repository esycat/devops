name "base-serv"
description "Base Server"
run_list [
    "recipe[esycat::utils]",
    "recipe[esycat::base-serv]",
    "recipe[esycat::mail-serv]"
]

