scoreboard players add $unique_waypoint_id wawo.waypoint_hub.id 0
scoreboard players add $unique_waypoint_id wawo.waypoint_hub.id 1

scoreboard players operation @s wawo.waypoint_hub.id = $unique_waypoint_id wawo.waypoint_hub.id
execute store result storage eden:temp waypoint.id int 1 run scoreboard players get @s wawo.waypoint_hub.id