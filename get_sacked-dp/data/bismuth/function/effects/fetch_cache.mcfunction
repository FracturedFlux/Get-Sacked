$data modify storage bismuth:storage temp.effects.cache set from storage bismuth:storage cache."$(name)"

data modify storage bismuth:storage temp.macro_input.place set value 0
execute if data storage bismuth:storage temp.effects.cache.tags[0] run function bismuth:effects/tag/remove/loop with storage bismuth:storage temp.macro_input
$data remove storage bismuth:storage cache."$(name)"