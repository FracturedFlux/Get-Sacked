function bismuth:creative_toggle/check

item modify entity @s bismuth:pouch/resetting bismuth:reset
item modify entity @s bismuth:pouch/equipping bismuth:equipped

function bismuth:get_username
function bismuth:effects/fetch_cache with storage bismuth:storage temp.macro_input

data remove storage bismuth:storage temp

tag @s add bismuth.target
execute summon minecraft:item_display run function bismuth:loop
tag @s remove bismuth.target

execute if data storage bismuth:storage temp.effects.list run function bismuth:effects/main

data remove storage bismuth:storage temp

advancement revoke @s only bismuth:update_trinket_pouch