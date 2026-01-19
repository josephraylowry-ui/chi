playsound minecraft:item.dye.use player @a ~ ~ ~

$execute unless data entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.text run \
    data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text set value {"color":"#FFFFFF","text":"$(waypoint_name)"}

$execute if items entity @s weapon.mainhand minecraft:black_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#1c1c22"
$execute if items entity @s weapon.mainhand minecraft:blue_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#142eaf"
$execute if items entity @s weapon.mainhand minecraft:brown_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#895836"
$execute if items entity @s weapon.mainhand minecraft:cyan_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#3889aa"
$execute if items entity @s weapon.mainhand minecraft:gray_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#979797"
$execute if items entity @s weapon.mainhand minecraft:green_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#577a22"
$execute if items entity @s weapon.mainhand minecraft:light_blue_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#8fb9f4"
$execute if items entity @s weapon.mainhand minecraft:light_gray_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#d9d9d9"
$execute if items entity @s weapon.mainhand minecraft:lime_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#83d41c"
$execute if items entity @s weapon.mainhand minecraft:magenta_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#db7ad5"
$execute if items entity @s weapon.mainhand minecraft:orange_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#f4b33f"
$execute if items entity @s weapon.mainhand minecraft:pink_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#f2aed1"
$execute if items entity @s weapon.mainhand minecraft:purple_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#b064d8"
$execute if items entity @s weapon.mainhand minecraft:red_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#be3030"
$execute if items entity @s weapon.mainhand minecraft:white_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#FFFFFF"
$execute if items entity @s weapon.mainhand minecraft:yellow_dye run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#e4e229"

execute if items entity @s weapon.mainhand minecraft:black_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#1c1c22"
execute if items entity @s weapon.mainhand minecraft:blue_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#142eaf"
execute if items entity @s weapon.mainhand minecraft:brown_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#895836"
execute if items entity @s weapon.mainhand minecraft:cyan_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#3889aa"
execute if items entity @s weapon.mainhand minecraft:gray_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#979797"
execute if items entity @s weapon.mainhand minecraft:green_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#577a22"
execute if items entity @s weapon.mainhand minecraft:light_blue_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#8fb9f4"
execute if items entity @s weapon.mainhand minecraft:light_gray_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#d9d9d9"
execute if items entity @s weapon.mainhand minecraft:lime_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#83d41c"
execute if items entity @s weapon.mainhand minecraft:magenta_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#db7ad5"
execute if items entity @s weapon.mainhand minecraft:orange_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#f4b33f"
execute if items entity @s weapon.mainhand minecraft:pink_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#f2aed1"
execute if items entity @s weapon.mainhand minecraft:purple_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#b064d8"
execute if items entity @s weapon.mainhand minecraft:red_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#be3030"
execute if items entity @s weapon.mainhand minecraft:white_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#FFFFFF"
execute if items entity @s weapon.mainhand minecraft:yellow_dye run data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.color set value "#e4e229"

item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]