# Iron increase block interaction range
execute if predicate trim_effects:trim/iron_trim/iron_head run attribute @s block_interaction_range modifier add iron_head 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_chest run attribute @s block_interaction_range modifier add iron_chest 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_legs run attribute @s block_interaction_range modifier add iron_legs 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_feet run attribute @s block_interaction_range modifier add iron_feet 1 add_value

# Iron increase entity interaction range
execute if predicate trim_effects:trim/iron_trim/iron_head run attribute @s entity_interaction_range modifier add iron_head 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_chest run attribute @s entity_interaction_range modifier add iron_chest 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_legs run attribute @s entity_interaction_range modifier add iron_legs 1 add_value
execute if predicate trim_effects:trim/iron_trim/iron_feet run attribute @s entity_interaction_range modifier add iron_feet 1 add_value

# Tag as trimmed with iron
execute if predicate trim_effects:trim/iron_trim/iron_head run tag @s add iron_head
execute if predicate trim_effects:trim/iron_trim/iron_chest run tag @s add iron_chest
execute if predicate trim_effects:trim/iron_trim/iron_legs run tag @s add iron_legs
execute if predicate trim_effects:trim/iron_trim/iron_feet run tag @s add iron_feet

# tellraw @s "Iron Applied"
