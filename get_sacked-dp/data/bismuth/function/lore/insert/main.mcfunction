$data modify storage bismuth:storage temp.tooltip.in set value $(tooltip)
scoreboard players set #setting bismuth.dummy 0
execute as @p[tag=bismuth.temp] if entity @s[tag=bismuth.setting.trinket_descriptions.off] run scoreboard players set #setting bismuth.dummy 1
execute if score #setting bismuth.dummy matches 1 run data modify storage bismuth:storage temp.tooltip.out set from storage bismuth:storage temp.tooltip.in[0]
execute if score #setting bismuth.dummy matches 0 run data modify storage bismuth:storage temp.tooltip.out set from storage bismuth:storage temp.tooltip.in
function bismuth:lore/insert/modify with storage bismuth:storage temp.tooltip
data remove storage bismuth:storage temp.tooltip