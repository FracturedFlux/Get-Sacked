item replace entity @s contents from entity @p[tag=bismuth.target] bismuth:pouch/scanning

data modify storage bismuth:storage temp.macro_input.slot set value 0
function bismuth:contents with storage bismuth:storage temp.macro_input

execute if data entity @s item.components."minecraft:bundle_contents" run item modify entity @s contents bismuth:list
execute if data entity @s item.components."minecraft:bundle_contents" run function bismuth:lore/start

item modify entity @s contents bismuth:checked/true

item replace entity @p[tag=bismuth.target] bismuth:pouch/scanning from entity @s contents

data remove storage bismuth:storage temp.macro_input

execute if slots entity @p[tag=bismuth.target] bismuth:pouch/scanning run return run function bismuth:loop

item modify entity @p[tag=bismuth.target] bismuth:pouch/checked bismuth:checked/false

function bismuth:despawn