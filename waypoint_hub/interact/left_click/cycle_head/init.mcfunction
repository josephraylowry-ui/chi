

scoreboard players add @s wawo.waypoint_hub.head 0
execute if score @s wawo.waypoint_hub.head matches 66.. store result storage eden:temp waypoint.head.database_id int 1 run scoreboard players set @s wawo.waypoint_hub.head -1
execute if score @s wawo.waypoint_hub.head matches ..65 store result storage eden:temp waypoint.head.database_id int 1 run scoreboard players add @s wawo.waypoint_hub.head 1

function wawo:waypoint_hub/interact/left_click/cycle_head/exec with storage eden:temp waypoint.head
