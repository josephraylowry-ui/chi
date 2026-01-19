# Remove netherite knockback resistance.
execute unless predicate trim_effects:trim/netherite_trim/netherite_head run attribute @s knockback_resistance modifier remove netherite_head
execute unless predicate trim_effects:trim/netherite_trim/netherite_chest run attribute @s knockback_resistance modifier remove netherite_chest
execute unless predicate trim_effects:trim/netherite_trim/netherite_legs run attribute @s knockback_resistance modifier remove netherite_legs
execute unless predicate trim_effects:trim/netherite_trim/netherite_feet run attribute @s knockback_resistance modifier remove netherite_feet

# Remove netherite_trim tag
execute unless predicate trim_effects:trim/netherite_trim/netherite_head run tag @s remove netherite_head
execute unless predicate trim_effects:trim/netherite_trim/netherite_chest run tag @s remove netherite_chest
execute unless predicate trim_effects:trim/netherite_trim/netherite_legs run tag @s remove netherite_legs
execute unless predicate trim_effects:trim/netherite_trim/netherite_feet run tag @s remove netherite_feet

# Reset netherite_trim score
scoreboard players set @s netherite_trim 0

# tellraw @s "Netherite Removed"
