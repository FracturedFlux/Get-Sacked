$tag @s add $(tag)
$data modify storage bismuth:storage temp.macro_input.tag set value "$(tag)"
function bismuth:effects/tag/add/cache with storage bismuth:storage temp.macro_input