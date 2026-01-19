# Gold increase mining speed
execute if predicate trim_effects:trim/gold_trim/gold_head run attribute @s block_break_speed modifier add gold_head 1 add_value
execute if predicate trim_effects:trim/gold_trim/gold_chest run attribute @s block_break_speed modifier add gold_chest 1 add_value
execute if predicate trim_effects:trim/gold_trim/gold_legs run attribute @s block_break_speed modifier add gold_legs 1 add_value
execute if predicate trim_effects:trim/gold_trim/gold_feet run attribute @s block_break_speed modifier add gold_feet 1 add_value

# Tag as trimmed with gold
execute if predicate trim_effects:trim/gold_trim/gold_head run tag @s add gold_head
execute if predicate trim_effects:trim/gold_trim/gold_chest run tag @s add gold_chest
execute if predicate trim_effects:trim/gold_trim/gold_legs run tag @s add gold_legs
execute if predicate trim_effects:trim/gold_trim/gold_feet run tag @s add gold_feet

# tellraw @s "Gold Applied"
