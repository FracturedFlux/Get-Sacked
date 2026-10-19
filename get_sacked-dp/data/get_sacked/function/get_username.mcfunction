loot spawn ~ ~ ~ loot get_sacked:technical/player_head

data modify storage get_sacked:storage temp.macro_input.name set from entity @n[type=minecraft:item,predicate=get_sacked:player_head_item] Item.components."minecraft:profile".name
execute as @n[type=minecraft:item,predicate=get_sacked:player_head_item] run function get_sacked:despawn