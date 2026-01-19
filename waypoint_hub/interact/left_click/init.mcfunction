advancement revoke @s only wawo:waypoint_icon/left_click

data modify storage eden:temp waypoint.head.player_uuid set from entity @s UUID
execute as @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..16] store result storage eden:temp waypoint.head.waypoint_id int 1 run scoreboard players get @s wawo.waypoint_hub.id

function wawo:waypoint_hub/interact/left_click/check_uuid with storage eden:temp waypoint.head

execute as @e[type=minecraft:interaction,tag=wawo.waypoint_hub.interaction,distance=..16] if data entity @s attack run data remove entity @s attack