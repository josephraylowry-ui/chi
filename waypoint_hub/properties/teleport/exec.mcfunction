execute store result storage eden:temp waypoint.teleport.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"waypoint.teleport.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.waypoint_hub.exp_cost"}}} run return run title @s actionbar {"bold":false,"color":"red","italic":false,"translate":"message.warping_wonders.general.insufficient_exp"}

execute store result storage eden:temp waypoint.teleport.id int 1 run scoreboard players get @s wawo.waypoint_hub.menu.teleport
execute at @s run function wawo:waypoint_hub/properties/teleport/get_data with storage eden:temp waypoint.teleport
execute at @s run function wawo:waypoint_hub/properties/teleport/check_pos with storage eden:temp waypoint.teleport