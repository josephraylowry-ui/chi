schedule function wawo:waypoint_hub/properties/teleport/init 5t

execute as @a[scores={wawo.waypoint_hub.menu.teleport=1..}] run function wawo:waypoint_hub/properties/teleport/exec
execute as @a[scores={wawo.waypoint_hub.menu.teleport=1..}] run scoreboard players set @s wawo.waypoint_hub.menu.teleport 0