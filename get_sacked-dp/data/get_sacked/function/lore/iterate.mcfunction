function get_sacked:lore/insert/main with storage get_sacked:storage temp.list[-1].components."minecraft:custom_data".get_sacked.trinket
execute store success score #get_sacked.temp get_sacked.dummy run data remove storage get_sacked:storage temp.list[-1]
execute if score #get_sacked.temp get_sacked.dummy matches 1 run function get_sacked:lore/iterate