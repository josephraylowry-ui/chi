playsound minecraft:entity.player.attack.weak player @a ~ ~ ~

execute unless data entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.text run \
    data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text set value {"color":"#FFFFFF","text":"Waypoint"}

data modify entity @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..16] text.text set from entity @s SelectedItem.components."minecraft:custom_name"

data modify entity @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..16] CustomName set from entity @s SelectedItem.components."minecraft:custom_name"
$data modify storage eden:database waypoints.hubs.$(waypoint_id).waypoint_name set from entity @s SelectedItem.components."minecraft:custom_name"

item modify entity @s[gamemode=!creative] weapon.mainhand [{"function": "minecraft:set_count","count": -1,"add": true}]