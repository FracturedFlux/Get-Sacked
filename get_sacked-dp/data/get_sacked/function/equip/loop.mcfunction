




data modify storage get_sacked:storage temp.macro_input.place set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"get_sacked:storage",path:"temp.macro_input.place"},1]}
function get_sacked:equip/loop with storage get_sacked:storage temp.macro_input

