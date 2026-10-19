$execute unless data entity @s item.components."minecraft:bundle_contents"[$(slot)] run return fail

data remove storage bismuth:storage temp.macro_input.item
$data modify storage bismuth:storage temp.macro_input.item set from entity @s item.components."minecraft:bundle_contents"[$(slot)]

scoreboard players set #valid bismuth.dummy 1

execute unless data storage bismuth:storage temp.macro_input.item.components."minecraft:custom_data".bismuth.trinket run function bismuth:drop_item with storage bismuth:storage temp.macro_input
function bismuth:group/start

execute if score #valid bismuth.dummy matches 1 if items entity @s contents *[minecraft:custom_data~{bismuth:{equipped:true}}] run data modify storage bismuth:storage temp.effects.list append from storage bismuth:storage temp.macro_input.item.components."minecraft:custom_data".bismuth.trinket.effects

data modify storage bismuth:storage temp.macro_input.slot set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"bismuth:storage",path:"temp.macro_input.slot"},1]}
function bismuth:group/loop with storage bismuth:storage temp.macro_input