function get_sacked:creative_toggle/check

item modify entity @s get_sacked:pouch/resetting get_sacked:reset
item modify entity @s get_sacked:pouch/equipping get_sacked:equipped

function get_sacked:get_username
function get_sacked:effects/fetch_cache with storage get_sacked:storage temp.macro_input

data remove storage get_sacked:storage temp

tag @s add get_sacked.target
execute summon minecraft:item_display run function get_sacked:loop
tag @s remove get_sacked.target

execute if data storage get_sacked:storage temp.effects.list run function get_sacked:effects/main

data remove storage get_sacked:storage temp

advancement revoke @s only get_sacked:update_trinket_pouch