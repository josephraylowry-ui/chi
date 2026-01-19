execute store result storage eden:temp portal_horn.id int 1 run scoreboard players get @s wawo.portal_horn.teleport.send
execute store result storage eden:temp portal_horn.requestor_id int 1 run scoreboard players get @s wawo.portal_horn.player.id
data modify storage eden:temp portal_horn.exp_cost set from storage eden:settings warping_wonders.portal_horn.exp_cost

function wawo:portal_horn/send/fetch_player with storage eden:temp portal_horn
function wawo:portal_horn/send/message with storage eden:temp portal_horn

