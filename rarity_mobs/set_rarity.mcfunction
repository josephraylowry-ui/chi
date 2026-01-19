$data modify entity @s DeathLootTable set value "$(loottable)"

$attribute @s minecraft:max_health base set $(health)
$data modify entity @s Health set value $(health)f

$execute if data storage eden:settings mob_manager.rarity_mobs.$(type){customname:"enabled"} run data modify entity @s CustomNameVisible set value 0b
$execute if data storage eden:settings mob_manager.rarity_mobs.$(type){customname:"enabled"} run data modify entity @s CustomName set value {"text":"⚔ $(first_name) $(last_name)","color":"#$(color)","italic":false}

$tag @s add mob_manager.rarity_mobs.$(type)

execute if data storage eden:settings mob_manager.misc{locator_assets:"enabled"} run waypoint modify @s style set mob_manager:rarity_mob
$waypoint modify @s color hex $(color)