schedule function wawo:clock/modify/init 1s

execute unless data storage eden:settings warping_wonders.clock{active:"enabled"} run return fail

execute as @a if items entity @s weapon.* minecraft:clock if data entity @s respawn run function wawo:clock/modify/weapon/init
execute as @a if items entity @s inventory.* minecraft:clock if data entity @s respawn run function wawo:clock/modify/inventory/init
execute as @a if items entity @s hotbar.* minecraft:clock if data entity @s respawn run function wawo:clock/modify/hotbar/init