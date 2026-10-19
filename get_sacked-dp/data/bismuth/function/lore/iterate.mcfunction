function bismuth:lore/insert/main with storage bismuth:storage temp.list[-1].components."minecraft:custom_data".bismuth.trinket
execute store success score #bismuth.temp bismuth.dummy run data remove storage bismuth:storage temp.list[-1]
execute if score #bismuth.temp bismuth.dummy matches 1 run function bismuth:lore/iterate