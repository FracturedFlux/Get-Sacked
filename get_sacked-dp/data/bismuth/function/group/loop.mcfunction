$execute unless data storage bismuth:storage temp.macro_input.item.components."minecraft:custom_data".bismuth.trinket.groups[$(place)] run return fail
$data modify storage bismuth:storage temp.macro_input.group.group set from storage bismuth:storage temp.macro_input.item.components."minecraft:custom_data".bismuth.trinket.groups[$(place)]
function bismuth:group/check with storage bismuth:storage temp.macro_input.group
execute if score #trinkets bismuth.dummy matches 2.. run return fail
data modify storage bismuth:storage temp.macro_input.group.place set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"bismuth:storage",path:"temp.macro_input.group.place"},1]}
function bismuth:group/loop with storage bismuth:storage temp.macro_input.group