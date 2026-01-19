scoreboard players set @s copper_trim 0

# Calculate how many copper trimmed armor the player is wearing into a scoreboard
execute if predicate trim_effects:trim/copper_trim/copper_head run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_chest run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_legs run scoreboard players add @s copper_trim 1
execute if predicate trim_effects:trim/copper_trim/copper_feet run scoreboard players add @s copper_trim 1

# Remove copper scale
execute unless score @s copper_trim matches 1.. run attribute @s scale modifier remove copper_one
execute unless score @s copper_trim matches 2.. run attribute @s scale modifier remove copper_two
execute unless score @s copper_trim matches 3.. run attribute @s scale modifier remove copper_three
execute unless score @s copper_trim matches 4 run attribute @s scale modifier remove copper_four

# Remove copper_trim tag
execute unless predicate trim_effects:trim/copper_trim/copper_head run tag @s remove copper_head
execute unless predicate trim_effects:trim/copper_trim/copper_chest run tag @s remove copper_chest
execute unless predicate trim_effects:trim/copper_trim/copper_legs run tag @s remove copper_legs
execute unless predicate trim_effects:trim/copper_trim/copper_feet run tag @s remove copper_feet

# tellraw @s "Copper Removed"
