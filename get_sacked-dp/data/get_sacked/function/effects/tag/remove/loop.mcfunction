function get_sacked:effects/tag/remove/apply with storage get_sacked:storage temp.effects.cache.tags[0]
data remove storage get_sacked:storage temp.effects.cache.tags[0]
execute if data storage get_sacked:storage temp.effects.cache.tags[0] run function get_sacked:effects/tag/remove/loop