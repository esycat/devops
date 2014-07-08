name 'desktop'
description 'Work Station'

run_list  [
    'recipe[esycat::commons]',
    'recipe[esycat::users]',
    'recipe[esycat::workstation]',
]

