$summon minecraft:item ~ ~ ~ {PickupDelay:0,Item:$(item)}
$data remove entity @s item.components."minecraft:bundle_contents"[$(slot)]
scoreboard players remove #slot bismuth.dummy 1
scoreboard players set #valid bismuth.dummy 0