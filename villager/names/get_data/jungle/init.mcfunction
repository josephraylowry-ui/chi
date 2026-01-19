execute store result storage eden:temp villager_names.jungle.id.first_name int 1 run random value 1..398
execute store result storage eden:temp villager_names.jungle.id.last_name int 1 run random value 1..380
function mob_manager:villager/names/get_data/jungle/copy_to_temp with storage eden:temp villager_names.jungle.id

data modify storage eden:temp villager_names.jungle.color set from storage eden:database color.villager.jungle

function mob_manager:villager/names/set_name with storage eden:temp villager_names.jungle