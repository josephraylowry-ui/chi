execute store result storage eden:temp portal_horn.id int 1 run scoreboard players get @s wawo.portal_horn.teleport.accept
data modify storage eden:temp portal_horn,uuid set from entity @s UUID

function wawo:portal_horn/accept/fetch_player with storage eden:temp portal_horn
function wawo:portal_horn/accept/teleport with storage eden:temp portal_horn

