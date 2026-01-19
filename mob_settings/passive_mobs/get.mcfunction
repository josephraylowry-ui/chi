$execute if data storage eden:settings mob_manager.$(type){allow_mob:"disabled"} run return run function mob_manager:kill

$execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run random value $(scale_min)..$(scale_max)
$execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.$(type).scale_min"},"range":{"min":$(scale_max)}} store result storage eden:temp mob_manager.scale float 0.01 run data get storage eden:settings mob_manager.$(type).scale_max

$execute store result storage eden:temp mob_manager.health float 0.01 run attribute @s minecraft:max_health base get $(health)
$execute store result storage eden:temp mob_manager.tempt_range float 0.01 run attribute @s minecraft:tempt_range base get $(tempt_range)
$execute store result storage eden:temp mob_manager.follow_range float 0.01 run attribute @s minecraft:follow_range base get $(follow_range)
$execute store result storage eden:temp mob_manager.move_speed float 0.01 run attribute @s minecraft:movement_speed base get $(move_speed)
$execute store result storage eden:temp mob_manager.fly_speed float 0.01 run attribute @s minecraft:flying_speed base get $(move_speed)
$execute store result storage eden:temp mob_manager.safe_fall float 0.01 run attribute @s minecraft:safe_fall_distance base get $(safe_fall)

$execute if data storage eden:settings mob_manager.$(type){breed:"disabled"} run tag @s add mob_manager.settings.breed.disabled
$execute if data storage eden:settings mob_manager.$(type){drown:"disabled"} run tag @s add mob_manager.settings.drown.disabled
$execute if data storage eden:settings mob_manager.$(type){silent:"enabled"} run data modify entity @s Silent set value 1b
$execute if data storage eden:settings mob_manager.$(type){burn:"disabled"} run attribute @s minecraft:burning_time base set 0
$execute if data storage eden:settings mob_manager.$(type){pickup:"disabled"} run data modify entity @s CanPickUpLoot set value 0b

$data modify entity @s DeathLootTable set value 'mob_manager:entity/default/$(type)'

$execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"enabled"} run attribute @s minecraft:waypoint_transmit_range base set $(locator_range)
execute if data storage eden:settings mob_manager.misc{mobs_on_locator_bar:"disabled"} run attribute @s minecraft:waypoint_transmit_range base set 0
$data modify entity @s data.mob_manager.locator_bar set value {icon:"$(type)",color:"$(locator_color)",range:$(locator_range)}
$execute if data storage eden:settings mob_manager.misc{locator_assets:"disabled"} run waypoint modify @s color hex $(locator_color)
$execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s style set mob_manager:$(type)
execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s color white

execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.jebspawning"},"range":{"min":0.01}} as @s[type=sheep] run function mob_manager:jeb_sheep/set_name with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.brownmoospawning"},"range":{"min":0.01}} as @s[type=mooshroom] run function mob_manager:brown_mooshroom with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.babymountspawning"},"range":{"min":0.01}} as @s[type=#mob_manager:valid_for_baby_mount] at @s run function mob_manager:baby_mount/init with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.killerrabbitspawning"},"range":{"min":0.01}} as @s[type=rabbit] run function mob_manager:killer_rabbit with storage eden:settings mob_manager.misc
execute if predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.misc.lefthanded"},"range":{"min":0.01}} run function mob_manager:lefthanded with storage eden:settings mob_manager.misc
execute if data storage eden:settings mob_manager.misc{skeletonhorsetrap:"disabled"} as @s[type=skeleton_horse] run data modify entity @s SkeletonTrap set value 0b

execute as @s[type=villager] at @s run function mob_manager:villager/init with storage eden:settings mob_manager.villager_settings
execute as @s[type=wandering_trader] at @s run function mob_manager:wandering_trader/init

function mob_manager:mob_settings/passive_mobs/exec with storage eden:temp mob_manager