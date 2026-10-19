advancement revoke @s only bismuth:update_unchecked_trinket

tag @s add bismuth.target
execute summon minecraft:item_display run function bismuth:process_trinket/as_entity
tag @s remove bismuth.target