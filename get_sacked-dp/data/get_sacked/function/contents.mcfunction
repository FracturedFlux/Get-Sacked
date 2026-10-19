$execute unless data entity @s item.components."minecraft:bundle_contents"[$(slot)] run return fail

data remove storage get_sacked:storage temp.macro_input.item
$data modify storage get_sacked:storage temp.macro_input.item set from entity @s item.components."minecraft:bundle_contents"[$(slot)]

scoreboard players set #valid get_sacked.dummy 1

execute unless data storage get_sacked:storage temp.macro_input.item.components."minecraft:custom_data".get_sacked.trinket run function get_sacked:drop_item with storage get_sacked:storage temp.macro_input
function get_sacked:group/start

execute if score #valid get_sacked.dummy matches 1 if items entity @s contents *[minecraft:custom_data~{get_sacked:{equipped:true}}] run data modify storage get_sacked:storage temp.effects.list append from storage get_sacked:storage temp.macro_input.item.components."minecraft:custom_data".get_sacked.trinket.effects

data modify storage get_sacked:storage temp.macro_input.slot set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"get_sacked:storage",path:"temp.macro_input.slot"},1]}
function get_sacked:group/loop with storage get_sacked:storage temp.macro_input