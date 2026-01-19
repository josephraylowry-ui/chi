execute as @s[type=villager] at @s if predicate mob_manager:location/in_deep_blue run return run function mob_manager:villager/names/get_data/deep_blue/init

execute as @s[type=villager,predicate=mob_manager:entity/is_desert_type] run function mob_manager:villager/names/get_data/desert/init
execute as @s[type=villager,predicate=mob_manager:entity/is_jungle_type] run function mob_manager:villager/names/get_data/jungle/init
execute as @s[type=villager,predicate=mob_manager:entity/is_plains_type] run function mob_manager:villager/names/get_data/plains/init
execute as @s[type=villager,predicate=mob_manager:entity/is_savanna_type] run function mob_manager:villager/names/get_data/savanna/init
execute as @s[type=villager,predicate=mob_manager:entity/is_snow_type] run function mob_manager:villager/names/get_data/snow/init
execute as @s[type=villager,predicate=mob_manager:entity/is_swamp_type] run function mob_manager:villager/names/get_data/swamp/init
execute as @s[type=villager,predicate=mob_manager:entity/is_taiga_type] run function mob_manager:villager/names/get_data/taiga/init