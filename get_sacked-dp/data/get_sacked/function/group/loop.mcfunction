$execute unless data storage get_sacked:storage temp.macro_input.item.components."minecraft:custom_data".get_sacked.trinket.groups[$(place)] run return fail
$data modify storage get_sacked:storage temp.macro_input.group.group set from storage get_sacked:storage temp.macro_input.item.components."minecraft:custom_data".get_sacked.trinket.groups[$(place)]
function get_sacked:group/check with storage get_sacked:storage temp.macro_input.group
execute if score #trinkets get_sacked.dummy matches 2.. run return fail
data modify storage get_sacked:storage temp.macro_input.group.place set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"get_sacked:storage",path:"temp.macro_input.group.place"},1]}
function get_sacked:group/loop with storage get_sacked:storage temp.macro_input.group