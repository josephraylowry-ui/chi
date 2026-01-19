playsound minecraft:block.chest.locked player @a ~ ~ ~ 0.4 1.5
item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]

$execute if data storage eden:database waypoints.hubs.$(waypoint_id){access:"public"} run return run data modify storage eden:database waypoints.hubs.$(waypoint_id).access set value "private"
$execute if data storage eden:database waypoints.hubs.$(waypoint_id){access:"private"} run return run data modify storage eden:database waypoints.hubs.$(waypoint_id).access set value "public"