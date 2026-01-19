playsound minecraft:entity.player.attack.weak player @a ~ ~ ~

$data modify storage eden:database waypoints.hubs.$(waypoint_id).waypoint_description set value "$(waypoint_description)\n\n"

item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]