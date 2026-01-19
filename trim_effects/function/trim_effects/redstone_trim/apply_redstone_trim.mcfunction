# Redstone increase movement speed
execute if predicate trim_effects:trim/redstone_trim/redstone_head run attribute @s movement_speed modifier add redstone_head 0.1 add_multiplied_base
execute if predicate trim_effects:trim/redstone_trim/redstone_chest run attribute @s movement_speed modifier add redstone_chest 0.1 add_multiplied_base
execute if predicate trim_effects:trim/redstone_trim/redstone_legs run attribute @s movement_speed modifier add redstone_legs 0.1 add_multiplied_base
execute if predicate trim_effects:trim/redstone_trim/redstone_feet run attribute @s movement_speed modifier add redstone_feet 0.1 add_multiplied_base

# Redstone increase step height
execute if predicate trim_effects:trim/redstone_trim/redstone_head run attribute @s step_height modifier add redstone_head 0.9 add_value
execute if predicate trim_effects:trim/redstone_trim/redstone_chest run attribute @s step_height modifier add redstone_chest 0.9 add_value
execute if predicate trim_effects:trim/redstone_trim/redstone_legs run attribute @s step_height modifier add redstone_legs 0.9 add_value
execute if predicate trim_effects:trim/redstone_trim/redstone_feet run attribute @s step_height modifier add redstone_feet 0.9 add_value

# Tag as trimmed with redstone
execute if predicate trim_effects:trim/redstone_trim/redstone_head run tag @s add redstone_head
execute if predicate trim_effects:trim/redstone_trim/redstone_chest run tag @s add redstone_chest
execute if predicate trim_effects:trim/redstone_trim/redstone_legs run tag @s add redstone_legs
execute if predicate trim_effects:trim/redstone_trim/redstone_feet run tag @s add redstone_feet

# tellraw @s "Redstone Applied"
