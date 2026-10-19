item replace entity @s contents from entity @p[tag=get_sacked.target] get_sacked:pouch/scanning

data modify storage get_sacked:storage temp.macro_input.slot set value 0
function get_sacked:contents with storage get_sacked:storage temp.macro_input

execute if data entity @s item.components."minecraft:bundle_contents" run item modify entity @s contents get_sacked:list
execute if data entity @s item.components."minecraft:bundle_contents" run function get_sacked:lore/start

item modify entity @s contents get_sacked:checked/true

item replace entity @p[tag=get_sacked.target] get_sacked:pouch/scanning from entity @s contents

data remove storage get_sacked:storage temp.macro_input

execute if slots entity @p[tag=get_sacked.target] get_sacked:pouch/scanning run return run function get_sacked:loop

item modify entity @p[tag=get_sacked.target] get_sacked:pouch/checked get_sacked:checked/false

function get_sacked:despawn