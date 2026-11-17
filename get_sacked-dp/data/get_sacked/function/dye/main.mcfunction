advancement revoke @s only get_sacked:redye_trinket_pouch
function get_sacked:creative_toggle/check

execute if items entity @s get_sacked:dyed_pouch minecraft:white_bundle run give @s minecraft:white_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:orange_bundle run give @s minecraft:orange_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:magenta_bundle run give @s minecraft:magenta_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:light_blue_bundle run give @s minecraft:light_blue_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:lime_bundle run give @s minecraft:lime_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:pink_bundle run give @s minecraft:pink_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:gray_bundle run give @s minecraft:gray_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:light_gray_bundle run give @s minecraft:light_gray_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:cyan_bundle run give @s minecraft:cyan_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:purple_bundle run give @s minecraft:purple_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:blue_bundle run give @s minecraft:blue_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:brown_bundle run give @s minecraft:brown_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:green_bundle run give @s minecraft:green_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:red_bundle run give @s minecraft:red_dye
execute if items entity @s get_sacked:dyed_pouch minecraft:black_bundle run give @s minecraft:black_dye

item modify entity @s get_sacked:dyed_pouch get_sacked:undye_pouch