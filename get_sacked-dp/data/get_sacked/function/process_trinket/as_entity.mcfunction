item replace entity @s contents from entity @p[tag=get_sacked.target] get_sacked:trinket/unchecked

data modify entity @s item.components."minecraft:max_stack_size" set from entity @s item.components."minecraft:custom_data".get_sacked.trinket.max_stack_size
data remove entity @s item.components."minecraft:custom_data".get_sacked.trinket.max_stack_size

data modify entity @s item.components."minecraft:custom_data".get_sacked.uid set compute default integer {type:"minecraft:uniform",min:0,max:2147483646}

item modify entity @s contents get_sacked:checked/true

item replace entity @p[tag=get_sacked.target] get_sacked:trinket/unchecked from entity @s contents

execute if slots entity @p[tag=get_sacked.target] get_sacked:trinket/unchecked run return run function get_sacked:trinket/process/as_entity

function get_sacked:despawn