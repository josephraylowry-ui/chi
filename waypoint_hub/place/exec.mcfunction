$data modify storage eden:temp waypoint.type set value "$(type)"

execute if data entity @s CustomName align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/named/init
execute unless data entity @s CustomName align xyz positioned ~ ~ ~ run function wawo:waypoint_hub/place/unnamed/init

kill @s