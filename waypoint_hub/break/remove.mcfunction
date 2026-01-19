$data modify storage eden:temp waypoint.remove.name set from storage eden:database waypoints.hubs.$(id).profile.name
function wawo:waypoint_hub/break/substract_score with storage eden:temp waypoint.remove

$data remove storage eden:database waypoints.hubs.$(id)
kill @e[type=item_display,tag=wawo.waypoint_hub.display,distance=..2.5]
kill @e[type=block_display,tag=wawo.waypoint_hub.display,distance=..2.5]
kill @e[type=text_display,tag=wawo.waypoint_hub.display,distance=..2.5]
kill @e[type=text_display,tag=wawo.waypoint_hub.display.lock,distance=..2.5]
kill @e[type=interaction,tag=wawo.waypoint_hub.interaction,distance=..2.5]
execute at @s if block ~ ~1 ~ light run setblock ~ ~1 ~ air

execute as @s[tag=wawo.waypoint_hub.type.deepslate] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/deepslate
execute as @s[tag=wawo.waypoint_hub.type.andesite] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/andesite
execute as @s[tag=wawo.waypoint_hub.type.basalt] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/basalt
execute as @s[tag=wawo.waypoint_hub.type.blackstone] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/blackstone
execute as @s[tag=wawo.waypoint_hub.type.diorite] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/diorite
execute as @s[tag=wawo.waypoint_hub.type.granite] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/granite
execute as @s[tag=wawo.waypoint_hub.type.tuff] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/tuff
execute as @s[tag=wawo.waypoint_hub.type.sculk] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/sculk
execute as @s[tag=wawo.waypoint_hub.type.red_sandstone] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/red_sandstone
execute as @s[tag=wawo.waypoint_hub.type.sandstone] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/sandstone
execute as @s[tag=wawo.waypoint_hub.type.copper] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/copper
execute as @s[tag=wawo.waypoint_hub.type.dark_prismarine] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/dark_prismarine
execute as @s[tag=wawo.waypoint_hub.type.exposed_copper] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/exposed_copper
execute as @s[tag=wawo.waypoint_hub.type.oxidized_copper] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/oxidized_copper
execute as @s[tag=wawo.waypoint_hub.type.prismarine] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/prismarine
execute as @s[tag=wawo.waypoint_hub.type.weathered_copper] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/weathered_copper
execute as @s[tag=wawo.waypoint_hub.type.acacia] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/acacia
execute as @s[tag=wawo.waypoint_hub.type.bamboo] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/bamboo
execute as @s[tag=wawo.waypoint_hub.type.birch] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/birch
execute as @s[tag=wawo.waypoint_hub.type.cherry] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/cherry
execute as @s[tag=wawo.waypoint_hub.type.crimson] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/crimson
execute as @s[tag=wawo.waypoint_hub.type.dark_oak] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/dark_oak
execute as @s[tag=wawo.waypoint_hub.type.end_stone] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/end_stone
execute as @s[tag=wawo.waypoint_hub.type.hay] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/hay
execute as @s[tag=wawo.waypoint_hub.type.jungle] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/jungle
execute as @s[tag=wawo.waypoint_hub.type.mangrove] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/mangrove
execute as @s[tag=wawo.waypoint_hub.type.melon] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/melon
execute as @s[tag=wawo.waypoint_hub.type.oak] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/oak
execute as @s[tag=wawo.waypoint_hub.type.obsidian] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/obsidian
execute as @s[tag=wawo.waypoint_hub.type.packed_mud] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/packed_mud
execute as @s[tag=wawo.waypoint_hub.type.pale_oak] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/pale_oak
execute as @s[tag=wawo.waypoint_hub.type.pumpkin] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/pumpkin
execute as @s[tag=wawo.waypoint_hub.type.purpur] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/purpur
execute as @s[tag=wawo.waypoint_hub.type.quartz] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/quartz
execute as @s[tag=wawo.waypoint_hub.type.spruce] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/spruce
execute as @s[tag=wawo.waypoint_hub.type.warped] run loot spawn ~ ~ ~ loot wawo:item/waypoint_hub/warped

execute as @s[\
tag=!wawo.waypoint_hub.type.deepslate,\
tag=!wawo.waypoint_hub.type.andesite,\
tag=!wawo.waypoint_hub.type.basalt,\
tag=!wawo.waypoint_hub.type.blackstone,\
tag=!wawo.waypoint_hub.type.diorite,\
tag=!wawo.waypoint_hub.type.granite,\
tag=!wawo.waypoint_hub.type.tuff,\
tag=!wawo.waypoint_hub.type.sculk,\
tag=!wawo.waypoint_hub.type.red_sandstone,\
tag=!wawo.waypoint_hub.type.sandstone,\
tag=!wawo.waypoint_hub.type.copper,\
tag=!wawo.waypoint_hub.type.dark_prismarine,\
tag=!wawo.waypoint_hub.type.exposed_copper,\
tag=!wawo.waypoint_hub.type.oxidized_copper,\
tag=!wawo.waypoint_hub.type.prismarine,\
tag=!wawo.waypoint_hub.type.weathered_copper,\
tag=!wawo.waypoint_hub.type.acacia,\
tag=!wawo.waypoint_hub.type.bamboo,\
tag=!wawo.waypoint_hub.type.birch,\
tag=!wawo.waypoint_hub.type.cherry,\
tag=!wawo.waypoint_hub.type.crimson,\
tag=!wawo.waypoint_hub.type.dark_oak,\
tag=!wawo.waypoint_hub.type.end_stone,\
tag=!wawo.waypoint_hub.type.hay,\
tag=!wawo.waypoint_hub.type.jungle,\
tag=!wawo.waypoint_hub.type.mangrove,\
tag=!wawo.waypoint_hub.type.melon,\
tag=!wawo.waypoint_hub.type.oak,\
tag=!wawo.waypoint_hub.type.obsidian,\
tag=!wawo.waypoint_hub.type.packed_mud,\
tag=!wawo.waypoint_hub.type.pale_oak,\
tag=!wawo.waypoint_hub.type.pumpkin,\
tag=!wawo.waypoint_hub.type.purpur,\
tag=!wawo.waypoint_hub.type.quartz,\
tag=!wawo.waypoint_hub.type.spruce,\
tag=!wawo.waypoint_hub.type.warped\
] run loot spawn ~ ~ ~ loot wawo:pool/waypoint_hub

kill @s