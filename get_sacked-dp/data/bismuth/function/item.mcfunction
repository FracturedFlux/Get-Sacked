data modify storage bismuth:storage temp.macro_input.slot set value 0
function bismuth:contents with storage bismuth:storage temp.macro_input

execute if data entity @s item.components."minecraft:bundle_contents" run item modify entity @s contents bismuth:list
execute if data entity @s item.components."minecraft:bundle_contents" run function bismuth:lore/start

item modify entity @s contents bismuth:checked/true

data remove storage bismuth:storage temp