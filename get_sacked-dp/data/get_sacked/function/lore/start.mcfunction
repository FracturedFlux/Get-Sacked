data modify storage get_sacked:storage temp.list set from entity @s item.components."minecraft:bundle_contents"

function get_sacked:lore/iterate

data remove storage get_sacked:storage temp.list