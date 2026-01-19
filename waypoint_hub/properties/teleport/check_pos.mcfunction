$execute in $(dimension) positioned $(x) $(y) $(z) run forceload add ~ ~

$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~1 ~-1 ~ #wawo:unsafe_to_tp if block ~1 ~ ~ #wawo:safe_to_tp if block ~1 ~1 ~ #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_1 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~-1 ~-1 ~ #wawo:unsafe_to_tp if block ~-1 ~ ~ #wawo:safe_to_tp if block ~-1 ~1 ~ #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_2 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~ ~-1 ~-1 #wawo:unsafe_to_tp if block ~ ~ ~-1 #wawo:safe_to_tp if block ~ ~1 ~-1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_3 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~ ~-1 ~1 #wawo:unsafe_to_tp if block ~ ~ ~1 #wawo:safe_to_tp if block ~ ~1 ~1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_4 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~1 ~-1 ~-1 #wawo:unsafe_to_tp if block ~1 ~ ~-1 #wawo:safe_to_tp if block ~1 ~1 ~-1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_5 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~1 ~-1 ~1 #wawo:unsafe_to_tp if block ~1 ~ ~1 #wawo:safe_to_tp if block ~1 ~1 ~1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_6 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~-1 ~-1 ~-1 #wawo:unsafe_to_tp if block ~-1 ~ ~-1 #wawo:safe_to_tp if block ~-1 ~1 ~-1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_7 with storage eden:temp waypoint.teleport
$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~-1 ~-1 ~1 #wawo:unsafe_to_tp if block ~-1 ~ ~1 #wawo:safe_to_tp if block ~-1 ~1 ~1 #wawo:safe_to_tp run return run function wawo:waypoint_hub/properties/teleport/exec_tp/pos_8 with storage eden:temp waypoint.teleport

playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .5 2
tellraw @s [{"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},{"bold":false,"color":"white","italic":false,"translate":"message.warping_wonders.waypoint.invalid"}]
$execute in $(dimension) positioned $(x) $(y) $(z) run forceload remove ~ ~
data remove storage eden:temp waypoint.teleport