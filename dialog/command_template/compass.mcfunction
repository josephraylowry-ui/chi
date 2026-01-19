$data modify storage eden:settings warping_wonders.compass merge value {active:$(active),exp_cost:$(exp_cost),mob_teleport:$(mob_teleport)}

$data modify storage eden:settings warping_wonders.compass.breaking_chance_initial set value $(breaking_chance)
execute store result storage eden:settings warping_wonders.compass.breaking_chance float 0.01 run data get storage eden:settings warping_wonders.compass.breaking_chance_initial

execute if data storage eden:settings warping_wonders.compass{active:"enabled"} run data modify storage eden:settings warping_wonders.compass.active_initial set value "false"
execute unless data storage eden:settings warping_wonders.compass{active:"enabled"} run data modify storage eden:settings warping_wonders.compass.active_initial set value "true"

execute if data storage eden:settings warping_wonders.compass{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.compass.mob_teleport_initial set value "false"
execute unless data storage eden:settings warping_wonders.compass{mob_teleport:"enabled"} run data modify storage eden:settings warping_wonders.compass.mob_teleport_initial set value "true"

dialog show @s wawo:main