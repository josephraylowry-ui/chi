advancement revoke @s only wawo:used_clock

execute unless data storage eden:settings warping_wonders.clock{active:"enabled"} run return fail
execute store result storage eden:temp clock.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"clock.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.clock.exp_cost"}}} run return run title @s actionbar {"bold":false,"color":"red","italic":false,"translate":"message.warping_wonders.general.insufficient_exp"}

data modify storage eden:temp clock.tp.dimension set from entity @s respawn.dimension
data modify storage eden:temp clock.tp.x set from entity @s respawn.pos[0]
data modify storage eden:temp clock.tp.y set from entity @s respawn.pos[1]
data modify storage eden:temp clock.tp.z set from entity @s respawn.pos[2]

data modify storage eden:temp clock.tp.uuid set from entity @s UUID
data modify storage eden:temp clock.tp.exp_cost set from storage eden:settings warping_wonders.clock.exp_cost

function wawo:clock/teleport/adjust_height with storage eden:temp clock.tp
function wawo:clock/teleport/exec with storage eden:temp clock.tp

execute as @s[gamemode=!creative] if predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.clock.breaking_chance"}} run function wawo:remove_used_item {item:"minecraft:clock"}
