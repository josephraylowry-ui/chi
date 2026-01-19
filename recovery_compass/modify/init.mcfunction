schedule function wawo:recovery_compass/modify/init 1s

execute unless data storage eden:settings warping_wonders.recovery_compass{active:"enabled"} run return fail

execute as @a if items entity @s weapon.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/weapon/init
execute as @a if items entity @s inventory.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/inventory/init
execute as @a if items entity @s hotbar.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/hotbar/init