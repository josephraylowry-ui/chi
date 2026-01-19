scoreboard players set @s lapis_trim 0

# Calculate how many lapis trimmed armor a player is wearing into a scoreboard.
execute if entity @p[predicate=trim_effects:trim/lapis_trim/lapis_head] run scoreboard players add @s lapis_trim 1
execute if entity @p[predicate=trim_effects:trim/lapis_trim/lapis_chest] run scoreboard players add @s lapis_trim 1
execute if entity @p[predicate=trim_effects:trim/lapis_trim/lapis_legs] run scoreboard players add @s lapis_trim 1
execute if entity @p[predicate=trim_effects:trim/lapis_trim/lapis_feet] run scoreboard players add @s lapis_trim 1

execute if score @s lapis_trim matches 1 store result entity @s Value double 0.01 run data get entity @s Value 125
execute if score @s lapis_trim matches 2 store result entity @s Value double 0.01 run data get entity @s Value 150
execute if score @s lapis_trim matches 3 store result entity @s Value double 0.01 run data get entity @s Value 175
execute if score @s lapis_trim matches 4 store result entity @s Value double 0.01 run data get entity @s Value 200

tag @s add lapis_xp_orb
