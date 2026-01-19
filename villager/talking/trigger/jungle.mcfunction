advancement revoke @s only mob_manager:talking_villager/jungle

execute store result storage eden:temp dialogues.id int 1 run random value 100..349
data modify storage eden:temp dialogues.type set value "jungle"

function mob_manager:villager/talking/get_db_entry with storage eden:temp dialogues
function mob_manager:villager/talking/send_msg with storage eden:temp dialogues
