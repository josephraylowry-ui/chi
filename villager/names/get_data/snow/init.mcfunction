execute store result storage eden:temp villager_names.snow.id.first_name int 1 run random value 1..398
execute store result storage eden:temp villager_names.snow.id.last_name int 1 run random value 1..380
function mob_manager:villager/names/get_data/snow/copy_to_temp with storage eden:temp villager_names.snow.id

data modify storage eden:temp villager_names.snow.color set from storage eden:database color.villager.snow

function mob_manager:villager/names/set_name with storage eden:temp villager_names.snow