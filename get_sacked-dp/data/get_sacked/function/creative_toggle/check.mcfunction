execute unless entity @s[gamemode=creative] run return fail
advancement revoke @s only get_sacked:creative_toggle
tag @s add get_sacked.creative_toggle
gamemode adventure