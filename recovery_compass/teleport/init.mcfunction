advancement revoke @s only wawo:used_recovery_compass

execute unless data storage eden:settings warping_wonders.recovery_compass{active:"enabled"} run return fail
execute store result storage eden:temp recovery_compass.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"recovery_compass.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.recovery_compass.exp_cost"}}} run return run title @s actionbar {"bold":false,"color":"red","italic":false,"translate":"message.warping_wonders.general.insufficient_exp"}

data modify storage eden:temp recovery_compass.tp.dimension set from entity @s LastDeathLocation.dimension
data modify storage eden:temp recovery_compass.tp.x set from entity @s LastDeathLocation.pos[0]
data modify storage eden:temp recovery_compass.tp.y set from entity @s LastDeathLocation.pos[1]
data modify storage eden:temp recovery_compass.tp.z set from entity @s LastDeathLocation.pos[2]

data modify storage eden:temp recovery_compass.tp.uuid set from entity @s UUID
data modify storage eden:temp recovery_compass.tp.exp_cost set from storage eden:settings warping_wonders.recovery_compass.exp_cost

function wawo:recovery_compass/teleport/adjust_height with storage eden:temp recovery_compass.tp
function wawo:recovery_compass/teleport/exec with storage eden:temp recovery_compass.tp

execute as @s[gamemode=!creative] if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.recovery_compass.breaking_chance"}} run function wawo:remove_used_item {item:"minecraft:recovery_compass"}
