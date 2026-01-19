data remove storage eden:settings warping_wonders

data modify storage eden:settings warping_wonders.clock merge value {\
active:"enabled",\
active_initial: "false",\
exp_cost:5,\
breaking_chance:0.5,\
breaking_chance_initial:50,\
mob_teleport:"enabled",\
mob_teleport_initial:"false",\
command_template: "function wawo:dialog/command_template/clock {active:$(active),exp_cost:$(exp_cost),breaking_chance:$(breaking_chance),mob_teleport:$(mob_teleport)}"\
}\

data modify storage eden:settings warping_wonders.compass merge value {\
active:"enabled",\
active_initial: "false",\
exp_cost:5,\
breaking_chance:0.0,\
breaking_chance_initial:0,\
mob_teleport:"enabled",\
mob_teleport_initial:"false",\
command_template: "function wawo:dialog/command_template/compass {active:$(active),exp_cost:$(exp_cost),breaking_chance:$(breaking_chance),mob_teleport:$(mob_teleport)}"\
}\

data modify storage eden:settings warping_wonders.recovery_compass merge value {\
active:"enabled",\
active_initial: "false",\
exp_cost:5,\
breaking_chance:1.0,\
breaking_chance_initial:100,\
mob_teleport:"enabled",\
mob_teleport_initial:"false",\
command_template: "function wawo:dialog/command_template/recovery_compass {active:$(active),exp_cost:$(exp_cost),breaking_chance:$(breaking_chance),mob_teleport:$(mob_teleport)}"\
}\

data modify storage eden:settings warping_wonders.portal_horn merge value {\
active:"enabled",\
active_initial: "false",\
exp_cost:5,\
breaking_chance:0.0,\
breaking_chance_initial:0,\
mob_teleport:"enabled",\
mob_teleport_initial:"false",\
command_template: "function wawo:dialog/command_template/portal_horn {active:$(active),exp_cost:$(exp_cost),breaking_chance:$(breaking_chance),mob_teleport:$(mob_teleport)}"\
}\

scoreboard players set $cooldown wawo.goat_horn.timer 300

data modify storage eden:settings warping_wonders.waypoint_hub merge value {\
active:"enabled",\
active_initial: "false",\
exp_cost:5,\
min_distance:64,\
player_limit:32,\
mob_teleport:"enabled",\
mob_teleport_initial:"false",\
command_template: "function wawo:dialog/command_template/waypoint_hub {active:$(active),exp_cost:$(exp_cost),min_distance:$(min_distance),player_limit:$(player_limit),mob_teleport:$(mob_teleport)}"\
}

scoreboard players set $max_limit wawo.waypoint_hub.player.limit 32