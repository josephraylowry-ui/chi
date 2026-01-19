execute as @s[tag=nice_mobs.base] run return run tag @s add mob_manager.rarity_mobs.applied
$execute as @s[type=!#$(validmobs)] run return run tag @s add mob_manager.rarity_mobs.applied
$execute if data storage eden:settings mob_manager.misc{need_sky:"enabled"} as @s[type=#$(validmobs)] at @s if predicate mob_manager:location/can_see_sky run return run tag @s add mob_manager.rarity_mobs.applied

$execute as @s[type=#$(validmobs),tag=mob_manager.rarity_mobs.not_$(type)] run return fail

$scoreboard players add @s mob_manager.rarity_mobs.$(type).timer 0
$execute if score @s mob_manager.rarity_mobs.$(type).timer matches ..$(spawntime) run return run scoreboard players add @s mob_manager.rarity_mobs.$(type).timer 1
$execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:settings","path":"mob_manager.rarity_mobs.$(type).spawnchance"},"range":{"min":0.01}} run return run tag @s add mob_manager.rarity_mobs.not_$(type)
$execute unless predicate {"condition":"minecraft:random_chance","chance":$(spawnchance)} run return run tag @s add mob_manager.rarity_mobs.not_$(type)

$execute store result storage eden:settings mob_manager.rarity_mobs.$(type).first_name int 1 run random value 1..250
$execute store result storage eden:settings mob_manager.rarity_mobs.$(type).last_name int 1 run random value 1..250
$function mob_manager:rarity_mobs/get_name with storage eden:settings mob_manager.rarity_mobs.$(type)

$function mob_manager:rarity_mobs/set_rarity with storage eden:settings mob_manager.rarity_mobs.$(type)

tag @s add mob_manager.rarity_mobs.applied