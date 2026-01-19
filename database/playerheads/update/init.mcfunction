schedule function mob_manager:database/playerheads/update/init 1d

execute as @a at @s if score @s mob_manager.playerhead.update matches 1.. run function mob_manager:database/playerheads/update/get_id