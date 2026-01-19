# Remove amethyst attack damage.
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_head run attribute @s attack_damage modifier remove amethyst_head
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_chest run attribute @s attack_damage modifier remove amethyst_chest
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_legs run attribute @s attack_damage modifier remove amethyst_legs
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_feet run attribute @s attack_damage modifier remove amethyst_feet

# Remove amethyst_trim tag
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_head run tag @s remove amethyst_head
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_chest run tag @s remove amethyst_chest
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_legs run tag @s remove amethyst_legs
execute unless predicate trim_effects:trim/amethyst_trim/amethyst_feet run tag @s remove amethyst_feet

# tellraw @s "Amethyst Removed"
