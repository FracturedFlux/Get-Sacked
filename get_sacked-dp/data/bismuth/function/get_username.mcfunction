loot spawn ~ ~ ~ loot bismuth:technical/player_head

data modify storage bismuth:storage temp.macro_input.name set from entity @n[type=minecraft:item,predicate=bismuth:player_head_item] Item.components."minecraft:profile".name
execute as @n[type=minecraft:item,predicate=bismuth:player_head_item] run function bismuth:despawn