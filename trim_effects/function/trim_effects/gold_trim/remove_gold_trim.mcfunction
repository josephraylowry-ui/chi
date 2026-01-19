# Remove gold mining speed.
execute unless predicate trim_effects:trim/gold_trim/gold_head run attribute @s block_break_speed modifier remove gold_head
execute unless predicate trim_effects:trim/gold_trim/gold_chest run attribute @s block_break_speed modifier remove gold_chest
execute unless predicate trim_effects:trim/gold_trim/gold_legs run attribute @s block_break_speed modifier remove gold_legs
execute unless predicate trim_effects:trim/gold_trim/gold_feet run attribute @s block_break_speed modifier remove gold_feet

# Remove gold_trim tag
execute unless predicate trim_effects:trim/gold_trim/gold_head run tag @s remove gold_head
execute unless predicate trim_effects:trim/gold_trim/gold_chest run tag @s remove gold_chest
execute unless predicate trim_effects:trim/gold_trim/gold_legs run tag @s remove gold_legs
execute unless predicate trim_effects:trim/gold_trim/gold_feet run tag @s remove gold_feet

# tellraw @s "Gold Removed"
