name "app-serv"
description "Application Server"
run_list [
    "role[base-serv]",
    "recipe[java]",
    "recipe[php]",
    "recipe[glassfish]",
    "recipe[gradle::tarball]",
    "recipe[esycat::web-serv]",
    "recipe[esycat::app-serv]"
]
