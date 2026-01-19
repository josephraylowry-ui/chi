$data modify storage eden:settings warping_wonders.waypoint_hub merge value {active:$(active),exp_cost:$(exp_cost),mob_teleport:$(mob_teleport),min_distance:$(min_distance),player_limit:$(player_limit)}

execute if data storage eden:settings warping_wonders.waypoint_hub{active:"enabled"} run data modify storage eden:settings warping_wonders.waypoint_hub.active_initial set value "false"
execute unless data storage eden:settings warping_wonders.waypoint_hub{active:"enabled"} run data modify storage eden:settings warping_wonders.waypoint_hub.active_initial set value "true"

execute if data storage eden:settings warping_wonders.waypoint_hub{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.waypoint_hub.mob_teleport_initial set value "false"
execute unless data storage eden:settings warping_wonders.waypoint_hub{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.waypoint_hub.mob_teleport_initial set value "true"

$scoreboard players set $max_limit wawo.waypoint_hub.player.limit $(player_limit)

dialog show @s wawo:main