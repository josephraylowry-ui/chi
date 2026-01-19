scoreboard players set @s emerald_trim 0

# Calculate how many emerald trimmed armor the player is wearing into a scoreboard.
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_head] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_chest] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_legs] run scoreboard players add @s emerald_trim 1
execute if entity @s[predicate=trim_effects:trim/emerald_trim/emerald_feet] run scoreboard players add @s emerald_trim 1

execute if score @s emerald_trim matches ..3 run attribute @s safe_fall_distance modifier remove emerald_full

# Remove emerald gravity
execute unless predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s gravity modifier remove emerald_head
execute unless predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s gravity modifier remove emerald_chest
execute unless predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s gravity modifier remove emerald_legs
execute unless predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s gravity modifier remove emerald_feet
# Remove emerald gravity if sneaking
execute if predicate trim_effects:sneaking run attribute @s gravity modifier remove emerald_head
execute if predicate trim_effects:sneaking run attribute @s gravity modifier remove emerald_chest
execute if predicate trim_effects:sneaking run attribute @s gravity modifier remove emerald_legs
execute if predicate trim_effects:sneaking run attribute @s gravity modifier remove emerald_feet

# Remove emerald fall damage
execute unless predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s safe_fall_distance modifier remove emerald_head
execute unless predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s safe_fall_distance modifier remove emerald_chest
execute unless predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s safe_fall_distance modifier remove emerald_legs
execute unless predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s safe_fall_distance modifier remove emerald_feet

# Remove emerald jump strength
execute unless predicate trim_effects:trim/emerald_trim/emerald_head run attribute @s jump_strength modifier remove emerald_head
execute unless predicate trim_effects:trim/emerald_trim/emerald_chest run attribute @s jump_strength modifier remove emerald_chest
execute unless predicate trim_effects:trim/emerald_trim/emerald_legs run attribute @s jump_strength modifier remove emerald_legs
execute unless predicate trim_effects:trim/emerald_trim/emerald_feet run attribute @s jump_strength modifier remove emerald_feet
# Remove emerald jump strength if sneaking
execute if predicate trim_effects:sneaking run attribute @s jump_strength modifier remove emerald_head
execute if predicate trim_effects:sneaking run attribute @s jump_strength modifier remove emerald_chest
execute if predicate trim_effects:sneaking run attribute @s jump_strength modifier remove emerald_legs
execute if predicate trim_effects:sneaking run attribute @s jump_strength modifier remove emerald_feet

# Remove emerald_trim tag
execute unless predicate trim_effects:trim/emerald_trim/emerald_head run tag @s remove emerald_head
execute unless predicate trim_effects:trim/emerald_trim/emerald_chest run tag @s remove emerald_chest
execute unless predicate trim_effects:trim/emerald_trim/emerald_legs run tag @s remove emerald_legs
execute unless predicate trim_effects:trim/emerald_trim/emerald_feet run tag @s remove emerald_feet
execute if predicate trim_effects:sneaking run tag @s remove emerald_head
execute if predicate trim_effects:sneaking run tag @s remove emerald_chest
execute if predicate trim_effects:sneaking run tag @s remove emerald_legs
execute if predicate trim_effects:sneaking run tag @s remove emerald_feet

# tellraw @s "Emerald Removed"
