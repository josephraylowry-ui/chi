$data modify storage eden:temp waypoint.teleport.x set from storage eden:database waypoints.hubs.$(id).pos.x
$data modify storage eden:temp waypoint.teleport.y set from storage eden:database waypoints.hubs.$(id).pos.y
$data modify storage eden:temp waypoint.teleport.z set from storage eden:database waypoints.hubs.$(id).pos.z
$data modify storage eden:temp waypoint.teleport.dimension set from storage eden:database waypoints.hubs.$(id).pos.dimension
$data modify storage eden:temp waypoint.teleport.name set from storage eden:database waypoints.hubs.$(id).waypoint_name
$data modify storage eden:temp waypoint.teleport.owner set from storage eden:database waypoints.hubs.$(id).profile.name
$data modify storage eden:temp waypoint.teleport.color set from storage eden:database waypoints.hubs.$(id).color

data modify storage eden:temp waypoint.teleport.uuid set from entity @s UUID
data modify storage eden:temp waypoint.teleport.exp_cost set from storage eden:settings warping_wonders.waypoint_hub.exp_cost

loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp waypoint.teleport.executor set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8] Item.components.minecraft:profile.name
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8]