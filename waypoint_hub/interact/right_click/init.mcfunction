advancement revoke @s only wawo:waypoint_icon/right_click

data modify storage eden:temp waypoint.head.player_uuid set from entity @s UUID
execute as @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..16] store result storage eden:temp waypoint.head.waypoint_id int 1 run scoreboard players get @s wawo.waypoint_hub.id

execute as @e[type=minecraft:interaction,tag=wawo.waypoint_hub.interaction,distance=..16] if data entity @s interaction run data remove entity @s interaction

execute if items entity @s weapon.mainhand minecraft:music_disc_5[minecraft:custom_data={warping_wonders:{item:"waypoint_lock"}}] run return run function wawo:waypoint_hub/interact/right_click/check_uuid with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand #wawo:dyes run return run function wawo:waypoint_hub/interact/right_click/check_uuid with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return run function wawo:waypoint_hub/interact/right_click/check_uuid with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_name] run return run function wawo:waypoint_hub/interact/right_click/check_uuid with storage eden:temp waypoint.head

function wawo:waypoint_hub/interact/right_click/menu/init with storage eden:temp waypoint.head