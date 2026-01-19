scoreboard players set @s resin_trim 0

# Calculate how many resin trimmed armor the player is wearing into a scoreboard.
execute if entity @s[predicate=trim_effects:trim/resin_trim/resin_head] run scoreboard players add @s resin_trim 1
execute if entity @s[predicate=trim_effects:trim/resin_trim/resin_chest] run scoreboard players add @s resin_trim 1
execute if entity @s[predicate=trim_effects:trim/resin_trim/resin_legs] run scoreboard players add @s resin_trim 1
execute if entity @s[predicate=trim_effects:trim/resin_trim/resin_feet] run scoreboard players add @s resin_trim 1

# Resin apply resistance.
execute if score @s resin_trim matches 1 run effect give @s resistance 1 1
execute if score @s resin_trim matches 2 run effect give @s resistance 1 2
execute if score @s resin_trim matches 3 run effect give @s resistance 1 3
execute if score @s resin_trim matches 4 run effect give @s resistance 1 4

# Resin apply slowness.
execute if score @s resin_trim matches 1 run attribute @s movement_speed modifier add resin_one -.03 add_value
execute if score @s resin_trim matches 2 run attribute @s movement_speed modifier add resin_two -.05 add_value
execute if score @s resin_trim matches 3 run attribute @s movement_speed modifier add resin_three -.07 add_value
execute if score @s resin_trim matches 4 run attribute @s movement_speed modifier add resin_four -.1 add_value

# Resin apply block reach.
execute if score @s resin_trim matches 1 run attribute @s block_interaction_range modifier add resin_one -2 add_value
execute if score @s resin_trim matches 2 run attribute @s block_interaction_range modifier add resin_two -3 add_value
execute if score @s resin_trim matches 3 run attribute @s block_interaction_range modifier add resin_three -4 add_value
execute if score @s resin_trim matches 4 run attribute @s block_interaction_range modifier add resin_four -6 add_value

# Resin apply entity reach.
execute if score @s resin_trim matches 1 run attribute @s entity_interaction_range modifier add resin_one -2 add_value
execute if score @s resin_trim matches 2 run attribute @s entity_interaction_range modifier add resin_two -3 add_value
execute if score @s resin_trim matches 3 run attribute @s entity_interaction_range modifier add resin_three -4 add_value
execute if score @s resin_trim matches 4 run attribute @s entity_interaction_range modifier add resin_four -6 add_value

# Resin apply jump strength.
execute if score @s resin_trim matches 1 run attribute @s jump_strength modifier add resin_one -.07 add_value
execute if score @s resin_trim matches 2 run attribute @s jump_strength modifier add resin_two -.07 add_value
execute if score @s resin_trim matches 3 run attribute @s jump_strength modifier add resin_three -.07 add_value
execute if score @s resin_trim matches 4 run attribute @s jump_strength modifier add resin_four -.5 add_value

# Resin apply knockback resistance.
execute if score @s resin_trim matches 1 run attribute @s knockback_resistance modifier add resin_one .1 add_value
execute if score @s resin_trim matches 2 run attribute @s knockback_resistance modifier add resin_two .1 add_value
execute if score @s resin_trim matches 3 run attribute @s knockback_resistance modifier add resin_three .2 add_value
execute if score @s resin_trim matches 4 run attribute @s knockback_resistance modifier add resin_four 1 add_value

# Tag as trimmed with resin
tag @s add resin_trim

# tellraw @s "Resin Applied"
