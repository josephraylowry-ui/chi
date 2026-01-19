schedule function mob_manager:spectator_waypoint_receive 10t

execute as @a[gamemode=spectator] run attribute @s minecraft:waypoint_receive_range modifier add mob_manager:spectator -999999999 add_value
execute as @a[gamemode=!spectator] run attribute @s minecraft:waypoint_receive_range modifier remove mob_manager:spectator