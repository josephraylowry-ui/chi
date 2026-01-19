# Remove iron block interaction range
execute unless predicate trim_effects:trim/iron_trim/iron_head run attribute @s block_interaction_range modifier remove iron_head
execute unless predicate trim_effects:trim/iron_trim/iron_chest run attribute @s block_interaction_range modifier remove iron_chest
execute unless predicate trim_effects:trim/iron_trim/iron_legs run attribute @s block_interaction_range modifier remove iron_legs
execute unless predicate trim_effects:trim/iron_trim/iron_feet run attribute @s block_interaction_range modifier remove iron_feet

# Remove iron entity interaction range
execute unless predicate trim_effects:trim/iron_trim/iron_head run attribute @s entity_interaction_range modifier remove iron_head
execute unless predicate trim_effects:trim/iron_trim/iron_chest run attribute @s entity_interaction_range modifier remove iron_chest
execute unless predicate trim_effects:trim/iron_trim/iron_legs run attribute @s entity_interaction_range modifier remove iron_legs
execute unless predicate trim_effects:trim/iron_trim/iron_feet run attribute @s entity_interaction_range modifier remove iron_feet

# Remove iron_trim tag
execute unless predicate trim_effects:trim/iron_trim/iron_head run tag @s remove iron_head
execute unless predicate trim_effects:trim/iron_trim/iron_chest run tag @s remove iron_chest
execute unless predicate trim_effects:trim/iron_trim/iron_legs run tag @s remove iron_legs
execute unless predicate trim_effects:trim/iron_trim/iron_feet run tag @s remove iron_feet

# tellraw @s "Iron Removed"
