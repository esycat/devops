name "workstation"
description "Work Station"
run_list  [
    "recipe[esycat::utils]",
    "recipe[esycat::workstation]"
]

