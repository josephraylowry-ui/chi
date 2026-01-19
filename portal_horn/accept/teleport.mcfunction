$execute if data storage eden:settings warping_wonders.portal_horn{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}},distance=..36] run tp @s $(player)
$execute at @s unless predicate wawo:entity/is_riding run tp @s $(player)
$execute at @s if predicate wawo:entity/is_riding run tp @n[type=#wawo:is_mount] $(player)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100