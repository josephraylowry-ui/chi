# Remove diamond armor
execute unless predicate trim_effects:trim/diamond_trim/diamond_head run attribute @s armor modifier remove diamond_head
execute unless predicate trim_effects:trim/diamond_trim/diamond_chest run attribute @s armor modifier remove diamond_chest
execute unless predicate trim_effects:trim/diamond_trim/diamond_legs run attribute @s armor modifier remove diamond_legs
execute unless predicate trim_effects:trim/diamond_trim/diamond_feet run attribute @s armor modifier remove diamond_feet

# Remove diamond armor toughness
execute unless predicate trim_effects:trim/diamond_trim/diamond_head run attribute @s armor_toughness modifier remove diamond_head
execute unless predicate trim_effects:trim/diamond_trim/diamond_chest run attribute @s armor_toughness modifier remove diamond_chest
execute unless predicate trim_effects:trim/diamond_trim/diamond_legs run attribute @s armor_toughness modifier remove diamond_legs
execute unless predicate trim_effects:trim/diamond_trim/diamond_feet run attribute @s armor_toughness modifier remove diamond_feet

# Remove diamond_trim tag
execute unless predicate trim_effects:trim/diamond_trim/diamond_head run tag @s remove diamond_head
execute unless predicate trim_effects:trim/diamond_trim/diamond_chest run tag @s remove diamond_chest
execute unless predicate trim_effects:trim/diamond_trim/diamond_legs run tag @s remove diamond_legs
execute unless predicate trim_effects:trim/diamond_trim/diamond_feet run tag @s remove diamond_feet

# tellraw @s "Diamond Removed"
