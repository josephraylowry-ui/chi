scoreboard players set @s copper_trim 0

# Calculate how many copper trimmed armor the player is wearing into a scoreboard.
execute if predicate trim_effects:trim/copper_trim/copper_head run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_chest run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_legs run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_feet run scoreboard players add @s copper_trim 1

# Copper reduces scale
execute if score @s copper_trim matches 1.. run attribute @s scale modifier add copper_one -0.21 add_value
execute if score @s copper_trim matches 2.. run attribute @s scale modifier add copper_two -0.14 add_value
execute if score @s copper_trim matches 3.. run attribute @s scale modifier add copper_three -0.12 add_value
execute if score @s copper_trim matches 4 run attribute @s scale modifier add copper_four -0.2 add_value

# Tag as trimmed with copper
execute if predicate trim_effects:trim/copper_trim/copper_head run tag @s add copper_head
execute if predicate trim_effects:trim/copper_trim/copper_chest run tag @s add copper_chest
execute if predicate trim_effects:trim/copper_trim/copper_legs run tag @s add copper_legs
execute if predicate trim_effects:trim/copper_trim/copper_feet run tag @s add copper_feet

# tellraw @s "Copper Applied"
