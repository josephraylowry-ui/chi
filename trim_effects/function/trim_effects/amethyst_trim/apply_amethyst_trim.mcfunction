# Amethyst increse attack damage
execute if predicate trim_effects:trim/amethyst_trim/amethyst_head run attribute @s attack_damage modifier add amethyst_head 2 add_value
execute if predicate trim_effects:trim/amethyst_trim/amethyst_chest run attribute @s attack_damage modifier add amethyst_chest 2 add_value
execute if predicate trim_effects:trim/amethyst_trim/amethyst_legs run attribute @s attack_damage modifier add amethyst_legs 2 add_value
execute if predicate trim_effects:trim/amethyst_trim/amethyst_feet run attribute @s attack_damage modifier add amethyst_feet 2 add_value

# Tag as trimmed with amethyst
execute if predicate trim_effects:trim/amethyst_trim/amethyst_head run tag @s add amethyst_head
execute if predicate trim_effects:trim/amethyst_trim/amethyst_chest run tag @s add amethyst_chest
execute if predicate trim_effects:trim/amethyst_trim/amethyst_legs run tag @s add amethyst_legs
execute if predicate trim_effects:trim/amethyst_trim/amethyst_feet run tag @s add amethyst_feet

# tellraw @s "Amethyst Applied"
