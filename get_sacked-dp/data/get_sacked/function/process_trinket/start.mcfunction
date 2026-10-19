advancement revoke @s only get_sacked:update_unchecked_trinket

tag @s add get_sacked.target
execute summon minecraft:item_display run function get_sacked:process_trinket/as_entity
tag @s remove get_sacked.target