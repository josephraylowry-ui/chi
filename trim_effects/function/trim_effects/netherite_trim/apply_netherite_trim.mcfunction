scoreboard players set @s netherite_trim 0

# Calculate how many netherite trimmed armor the player is wearing into a scoreboard
execute if entity @s[predicate=trim_effects:trim/netherite_trim/netherite_head] run scoreboard players add @s netherite_trim 1
execute if entity @s[predicate=trim_effects:trim/netherite_trim/netherite_chest] run scoreboard players add @s netherite_trim 1
execute if entity @s[predicate=trim_effects:trim/netherite_trim/netherite_legs] run scoreboard players add @s netherite_trim 1
execute if entity @s[predicate=trim_effects:trim/netherite_trim/netherite_feet] run scoreboard players add @s netherite_trim 1

# Add netherite knockback resistance
execute if predicate trim_effects:trim/netherite_trim/netherite_head run attribute @s knockback_resistance modifier add netherite_head 0.25 add_value
execute if predicate trim_effects:trim/netherite_trim/netherite_chest run attribute @s knockback_resistance modifier add netherite_chest 0.25 add_value
execute if predicate trim_effects:trim/netherite_trim/netherite_legs run attribute @s knockback_resistance modifier add netherite_legs 0.25 add_value
execute if predicate trim_effects:trim/netherite_trim/netherite_feet run attribute @s knockback_resistance modifier add netherite_feet 0.25 add_value

# Tag as trimmed with netherite
execute if predicate trim_effects:trim/netherite_trim/netherite_head run tag @s add netherite_head
execute if predicate trim_effects:trim/netherite_trim/netherite_chest run tag @s add netherite_chest
execute if predicate trim_effects:trim/netherite_trim/netherite_legs run tag @s add netherite_legs
execute if predicate trim_effects:trim/netherite_trim/netherite_feet run tag @s add netherite_feet

# tellraw @s "Netherite Applied"
