function get_sacked:get_username
data modify storage get_sacked:storage temp.macro_input.place set value 0
function get_sacked:effects/loop with storage get_sacked:storage temp.macro_input
