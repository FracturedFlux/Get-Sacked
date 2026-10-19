item replace entity @s contents from entity @p[tag=bismuth.target] bismuth:trinket/unchecked

data modify entity @s item.components."minecraft:max_stack_size" set from entity @s item.components."minecraft:custom_data".bismuth.trinket.max_stack_size
data remove entity @s item.components."minecraft:custom_data".bismuth.trinket.max_stack_size

data modify entity @s item.components."minecraft:custom_data".bismuth.uid set compute default integer {type:"minecraft:uniform",min:0,max:2147483646}

item modify entity @s contents bismuth:checked/true

item replace entity @p[tag=bismuth.target] bismuth:trinket/unchecked from entity @s contents

execute if slots entity @p[tag=bismuth.target] bismuth:trinket/unchecked run return run function bismuth:trinket/process/as_entity

function bismuth:despawn