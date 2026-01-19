data modify storage eden:temp waypoint.profile merge value {properties:[{name:"textures",value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQyMTcwYTdmMzIwZTcyZmRlZDIwZDEzN2ZjY2I5ZjljYWZmY2Q5OTMzYWI5ZGJjMTg4OTQzNDA4ZjcxYWIxIn19fQ=="}]}

execute as @p run loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}
data modify storage eden:temp waypoint.profile_name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8] Item.components.minecraft:profile.name
data modify storage eden:temp waypoint.profile set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8] Item.components.minecraft:profile
kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..8]

function wawo:waypoint_hub/place/named/exec with storage eden:temp waypoint

execute as @n[type=marker,tag=wawo.waypoint_hub.marker,distance=..8] at @s run function wawo:database/waypoint_hub/init