$data modify storage get_sacked:storage temp.tooltip.in set value $(tooltip)
scoreboard players set #setting get_sacked.dummy 0
execute as @p[tag=get_sacked.temp] if entity @s[tag=get_sacked.setting.trinket_descriptions.off] run scoreboard players set #setting get_sacked.dummy 1
execute if score #setting get_sacked.dummy matches 1 run data modify storage get_sacked:storage temp.tooltip.out set from storage get_sacked:storage temp.tooltip.in[0]
execute if score #setting get_sacked.dummy matches 0 run data modify storage get_sacked:storage temp.tooltip.out set from storage get_sacked:storage temp.tooltip.in
function get_sacked:lore/insert/modify with storage get_sacked:storage temp.tooltip
data remove storage get_sacked:storage temp.tooltip