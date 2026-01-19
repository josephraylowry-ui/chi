execute unless score @s wawo.portal_horn.player.id matches 1.. run scoreboard players add $total_players wawo.portal_horn.player.id 1
execute unless score @s wawo.portal_horn.player.id matches 1.. run scoreboard players operation @s wawo.portal_horn.player.id = $total_players wawo.portal_horn.player.id
execute store result storage eden:temp portal_horn.id int 1 run scoreboard players get @s wawo.portal_horn.player.id

loot spawn ~ ~ ~ loot {"type":"minecraft:entity","pools":[{"rolls": 1,"entries":[{"type": "minecraft:item","name": "minecraft:player_head","functions":[{"function": "minecraft:fill_player_head","entity": "this"}]}]}]}

data modify storage eden:temp portal_horn.name set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..4] Item.components.minecraft:profile.name
data modify storage eden:temp portal_horn.uuid set from entity @n[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..4] Item.components.minecraft:profile.id

kill @n[type=item,nbt={Item:{id:"minecraft:player_head"}}]
function wawo:database/portal_horn/store_data with storage eden:temp portal_horn