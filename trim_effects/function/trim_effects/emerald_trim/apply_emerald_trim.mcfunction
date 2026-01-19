scoreboard players set @s emerald_trim 0

# Calculate how many emerald trimmed armor the player is wearing into a scoreboard
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_head] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_chest] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_legs] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_feet] run scoreboard players add @s emerald_trim 1

execute if score @s emerald_trim matches 4 run attribute @s safe_fall_distance modifier add emerald_full 9999999999 add_value

# Emerald reduces gravity
execute if predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s gravity modifier add emerald_head -0.017 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s gravity modifier add emerald_chest -0.017 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s gravity modifier add emerald_legs -0.017 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s gravity modifier add emerald_feet -0.017 add_value

# Emerald reduces fall damage
execute if predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s safe_fall_distance modifier add emerald_head 3 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s safe_fall_distance modifier add emerald_chest 3 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s safe_fall_distance modifier add emerald_legs 3 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s safe_fall_distance modifier add emerald_feet 3 add_value

# Emerald jump strength
execute if predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s jump_strength modifier add emerald_head 0.1 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s jump_strength modifier add emerald_chest 0.1 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s jump_strength modifier add emerald_legs 0.1 add_value
execute if predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s jump_strength modifier add emerald_feet 0.1 add_value

# Tag as trimmed with emerald
execute if predicate trim_effects:trim/emerald_trim/emerald_head run tag @s add emerald_head
execute if predicate trim_effects:trim/emerald_trim/emerald_chest run tag @s add emerald_chest
execute if predicate trim_effects:trim/emerald_trim/emerald_legs run tag @s add emerald_legs
execute if predicate trim_effects:trim/emerald_trim/emerald_feet run tag @s add emerald_feet

# tellraw @s "Emerald Applied"
