$data modify storage eden:settings mob_manager.rarity_mobs.$(type) merge value {customname:$(customname),particles:$(particles),spawntime:$(spawntime),spawnchance_initial:$(spawnchance),health:$(health),validmobs:'$(validmobs)',loottable:'$(loottable)'}

$execute if data storage eden:settings mob_manager.rarity_mobs.$(type){customname:"enabled"} run data modify storage eden:settings mob_manager.rarity_mobs.$(type).customname_initial set value "false"
$execute unless data storage eden:settings mob_manager.rarity_mobs.$(type){customname:"enabled"} run data modify storage eden:settings mob_manager.rarity_mobs.$(type).customname_initial set value "true"

$execute if data storage eden:settings mob_manager.rarity_mobs.$(type){particles:"enabled"} run data modify storage eden:settings mob_manager.rarity_mobs.$(type).particles_initial set value "false"
$execute unless data storage eden:settings mob_manager.rarity_mobs.$(type){particles:"enabled"} run data modify storage eden:settings mob_manager.rarity_mobs.$(type).particles_initial set value "true"

$execute store result storage eden:settings mob_manager.rarity_mobs.$(type).spawnchance float 0.01 run data get storage eden:settings mob_manager.rarity_mobs.$(type).spawnchance_initial

dialog show @s mob_manager:rarity_mobs