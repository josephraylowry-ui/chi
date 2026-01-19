execute store result score $wawo.lodestone.y wawo.technical run data get storage eden:temp compass.tp.y
scoreboard players operation $wawo.lodestone.y wawo.technical += $2 wawo.technical
execute store result storage eden:temp compass.tp.y_adj int 1 run scoreboard players get $wawo.lodestone.y wawo.technical