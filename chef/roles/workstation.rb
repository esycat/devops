name "workstation"
description "Work Station"
run_list  [
    "recipe[esycat::commons]",
    "recipe[esycat::workstation]",
    "recipe[esycat::users]"
]

