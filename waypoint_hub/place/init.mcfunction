execute if data storage eden:datapack realmrecrafted unless predicate wawo:location/valid_for_waypoint run return run function wawo:waypoint_hub/place/eden_invalid

$execute if entity @e[type=marker,tag=wawo.waypoint_hub.marker,distance=..$(min_distance)] run return run function wawo:waypoint_hub/place/invalid_position
execute unless data storage eden:settings warping_wonders.waypoint_hub{active:"enabled"} run return run function wawo:waypoint_hub/place/feature_disabled

execute if score @p[gamemode=!spectator,distance=..8] wawo.waypoint_hub.player.limit >= $max_limit wawo.waypoint_hub.player.limit run return run function wawo:waypoint_hub/place/limit_exceeded
scoreboard players add @p[gamemode=!spectator,distance=..8] wawo.waypoint_hub.player.limit 1

execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.deepslate] at @s run return run function wawo:waypoint_hub/place/exec {type:"deepslate"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.andesite] at @s run return run function wawo:waypoint_hub/place/exec {type:"andesite"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.basalt] at @s run return run function wawo:waypoint_hub/place/exec {type:"basalt"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.blackstone] at @s run return run function wawo:waypoint_hub/place/exec {type:"blackstone"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.diorite] at @s run return run function wawo:waypoint_hub/place/exec {type:"diorite"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.granite] at @s run return run function wawo:waypoint_hub/place/exec {type:"granite"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.tuff] at @s run return run function wawo:waypoint_hub/place/exec {type:"tuff"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.sculk] at @s run return run function wawo:waypoint_hub/place/exec {type:"sculk"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.sandstone] at @s run return run function wawo:waypoint_hub/place/exec {type:"sandstone"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.red_sandstone] at @s run return run function wawo:waypoint_hub/place/exec {type:"red_sandstone"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.copper] at @s run return run function wawo:waypoint_hub/place/exec {type:"copper"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.exposed_copper] at @s run return run function wawo:waypoint_hub/place/exec {type:"exposed_copper"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.weathered_copper] at @s run return run function wawo:waypoint_hub/place/exec {type:"weathered_copper"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.oxidized_copper] at @s run return run function wawo:waypoint_hub/place/exec {type:"oxidized_copper"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.prismarine] at @s run return run function wawo:waypoint_hub/place/exec {type:"prismarine"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.dark_prismarine] at @s run return run function wawo:waypoint_hub/place/exec {type:"dark_prismarine"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.acacia] at @s run return run function wawo:waypoint_hub/place/exec {type:"acacia"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.bamboo] at @s run return run function wawo:waypoint_hub/place/exec {type:"bamboo"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.birch] at @s run return run function wawo:waypoint_hub/place/exec {type:"birch"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.cherry] at @s run return run function wawo:waypoint_hub/place/exec {type:"cherry"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.crimson] at @s run return run function wawo:waypoint_hub/place/exec {type:"crimson"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.dark_oak] at @s run return run function wawo:waypoint_hub/place/exec {type:"dark_oak"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.end_stone] at @s run return run function wawo:waypoint_hub/place/exec {type:"end_stone"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.hay] at @s run return run function wawo:waypoint_hub/place/exec {type:"hay"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.jungle] at @s run return run function wawo:waypoint_hub/place/exec {type:"jungle"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.mangrove] at @s run return run function wawo:waypoint_hub/place/exec {type:"mangrove"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.melon] at @s run return run function wawo:waypoint_hub/place/exec {type:"melon"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.oak] at @s run return run function wawo:waypoint_hub/place/exec {type:"oak"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.obsidian] at @s run return run function wawo:waypoint_hub/place/exec {type:"obsidian"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.packed_mud] at @s run return run function wawo:waypoint_hub/place/exec {type:"packed_mud"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.pale_oak] at @s run return run function wawo:waypoint_hub/place/exec {type:"pale_oak"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.pumpkin] at @s run return run function wawo:waypoint_hub/place/exec {type:"pumpkin"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.purpur] at @s run return run function wawo:waypoint_hub/place/exec {type:"purpur"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.quartz] at @s run return run function wawo:waypoint_hub/place/exec {type:"quartz"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.spruce] at @s run return run function wawo:waypoint_hub/place/exec {type:"spruce"}
execute as @e[type=armor_stand,tag=wawo.waypoint_hub.type.warped] at @s run return run function wawo:waypoint_hub/place/exec {type:"warped"}