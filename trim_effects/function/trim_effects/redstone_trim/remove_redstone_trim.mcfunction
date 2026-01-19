# Remove redstone movement speed
execute unless predicate trim_effects:trim/redstone_trim/redstone_head run attribute @s movement_speed modifier remove redstone_head
execute unless predicate trim_effects:trim/redstone_trim/redstone_chest run attribute @s movement_speed modifier remove redstone_chest
execute unless predicate trim_effects:trim/redstone_trim/redstone_legs run attribute @s movement_speed modifier remove redstone_legs
execute unless predicate trim_effects:trim/redstone_trim/redstone_feet run attribute @s movement_speed modifier remove redstone_feet

# Remove redstone step height
execute unless predicate trim_effects:trim/redstone_trim/redstone_head run attribute @s step_height modifier remove redstone_head
execute unless predicate trim_effects:trim/redstone_trim/redstone_chest run attribute @s step_height modifier remove redstone_chest
execute unless predicate trim_effects:trim/redstone_trim/redstone_legs run attribute @s step_height modifier remove redstone_legs
execute unless predicate trim_effects:trim/redstone_trim/redstone_feet run attribute @s step_height modifier remove redstone_feet

# Remove redstone_trim tag
execute unless predicate trim_effects:trim/redstone_trim/redstone_head run tag @s remove redstone_head
execute unless predicate trim_effects:trim/redstone_trim/redstone_chest run tag @s remove redstone_chest
execute unless predicate trim_effects:trim/redstone_trim/redstone_legs run tag @s remove redstone_legs
execute unless predicate trim_effects:trim/redstone_trim/redstone_feet run tag @s remove redstone_feet

# tellraw @s "Redstone Removed"
