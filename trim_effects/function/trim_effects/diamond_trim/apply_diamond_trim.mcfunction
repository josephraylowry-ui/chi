# Diamond increase armor
execute if predicate trim_effects:trim/diamond_trim/diamond_head run attribute @s armor modifier add diamond_head 1.5 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_chest run attribute @s armor modifier add diamond_chest 1.5 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_legs run attribute @s armor modifier add diamond_legs 1.5 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_feet run attribute @s armor modifier add diamond_feet 1.5 add_value

# Diamond increase armor toughness
execute if predicate trim_effects:trim/diamond_trim/diamond_head run attribute @s armor_toughness modifier add diamond_head 1 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_chest run attribute @s armor_toughness modifier add diamond_chest 1 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_legs run attribute @s armor_toughness modifier add diamond_legs 1 add_value
execute if predicate trim_effects:trim/diamond_trim/diamond_feet run attribute @s armor_toughness modifier add diamond_feet 1 add_value

# Tag as trimmed with diamond
execute if predicate trim_effects:trim/diamond_trim/diamond_head run tag @s add diamond_head
execute if predicate trim_effects:trim/diamond_trim/diamond_chest run tag @s add diamond_chest
execute if predicate trim_effects:trim/diamond_trim/diamond_legs run tag @s add diamond_legs
execute if predicate trim_effects:trim/diamond_trim/diamond_feet run tag @s add diamond_feet

# tellraw @s "Diamond Applied"
