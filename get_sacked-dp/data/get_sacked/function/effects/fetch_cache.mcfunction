$data modify storage get_sacked:storage temp.effects.cache set from storage get_sacked:storage cache."$(name)"

data modify storage get_sacked:storage temp.macro_input.place set value 0
execute if data storage get_sacked:storage temp.effects.cache.tags[0] run function get_sacked:effects/tag/remove/loop with storage get_sacked:storage temp.macro_input
$data remove storage get_sacked:storage cache."$(name)"