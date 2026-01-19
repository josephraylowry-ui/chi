execute if data storage eden:settings mob_manager.villager_settings{breeddiversity:"enabled"} run function mob_manager:villager_random_baby_type
execute if data storage eden:settings mob_manager.villager_settings{customname:"enabled"} run function mob_manager:villager/names/init

$execute if predicate {"condition":"minecraft:random_chance","chance":$(pet)} run function mob_manager:villager/pets/init