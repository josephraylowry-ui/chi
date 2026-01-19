$execute unless data storage eden:database waypoints.hubs.$(waypoint_id).profile{id:$(player_uuid)} run return fail
$data modify storage eden:temp waypoint.head.waypoint_name set from storage eden:database waypoints.hubs.$(waypoint_id).waypoint_name
data modify storage eden:temp waypoint.head.waypoint_description set from entity @s SelectedItem.components."minecraft:custom_name"

execute if items entity @s weapon.mainhand minecraft:music_disc_5[minecraft:custom_data={warping_wonders:{item:"waypoint_lock"}}] run return run function wawo:waypoint_hub/interact/change_access with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand #wawo:dyes run return run function wawo:waypoint_hub/interact/change_color with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand minecraft:name_tag[minecraft:custom_name] run return run function wawo:waypoint_hub/interact/change_name with storage eden:temp waypoint.head
execute if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_name] run return run function wawo:waypoint_hub/interact/change_description with storage eden:temp waypoint.head

execute as @n[type=item_display,tag=wawo.waypoint_hub.icon,distance=..16] run function wawo:waypoint_hub/interact/left_click/cycle_head/init with storage eden:temp waypoint.head