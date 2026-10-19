data modify storage get_sacked:storage temp.macro_input.slot set value 0
function get_sacked:contents with storage get_sacked:storage temp.macro_input

execute if data entity @s item.components."minecraft:bundle_contents" run item modify entity @s contents get_sacked:list
execute if data entity @s item.components."minecraft:bundle_contents" run function get_sacked:lore/start

item modify entity @s contents get_sacked:checked/true

data remove storage get_sacked:storage temp