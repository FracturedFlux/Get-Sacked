execute unless entity @s[gamemode=creative] run return fail
advancement revoke @s only bismuth:creative_toggle
tag @s add bismuth.creative_toggle
gamemode adventure