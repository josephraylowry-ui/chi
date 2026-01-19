schedule function wawo:compass/modify/init 1s

execute unless data storage eden:settings warping_wonders.compass{active:"enabled"} run return fail

execute as @a if items entity @s weapon.* minecraft:compass[minecraft:lodestone_tracker] run function wawo:compass/modify/weapon/init
execute as @a if items entity @s inventory.* minecraft:compass[minecraft:lodestone_tracker] run function wawo:compass/modify/inventory/init
execute as @a if items entity @s hotbar.* minecraft:compass[minecraft:lodestone_tracker] run function wawo:compass/modify/hotbar/init