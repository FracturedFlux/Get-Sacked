$tag @s add $(tag)
$data modify storage get_sacked:storage temp.macro_input.tag set value "$(tag)"
function get_sacked:effects/tag/add/cache with storage get_sacked:storage temp.macro_input