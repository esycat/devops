name "app-serv"
description "Application Server"
run_list [
    "role[base-serv]",
    "recipe[esycat::web-serv]",
    "recipe[esycat::app-serv]",
    "recipe[gradle::tarball]",
    "recipe[glassfish::default]"
]
