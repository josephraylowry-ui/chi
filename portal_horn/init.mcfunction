advancement revoke @s only wawo:used_portal_horn
playsound wawo:warping_wonders.instrument.portal_horn player @a ~ ~ ~ 0.5 1.25
execute as @s[gamemode=!creative] unless predicate {"condition":"minecraft:random_chance","chance":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.portal_horn.breaking_chance"}} run loot give @s loot wawo:item/portal_horn

execute unless data storage eden:settings warping_wonders.portal_horn{active:"enabled"} run return fail
execute store result storage eden:temp portal_horn.exp_level int 1 run experience query @s levels
execute unless predicate {"condition":"minecraft:value_check","value":{"type":"minecraft:storage","storage":"eden:temp","path":"portal_horn.exp_level"},"range":{"min":{"type":"minecraft:storage","storage":"eden:settings","path":"warping_wonders.portal_horn.exp_cost"}}} run return run title @s actionbar {"bold":false,"color":"red","italic":false,"translate":"message.warping_wonders.general.insufficient_exp"}

scoreboard players enable @s wawo.portal_horn.teleport.send
function wawo:database/portal_horn/init

function wawo:portal_horn/exec with storage eden:database portal_horn