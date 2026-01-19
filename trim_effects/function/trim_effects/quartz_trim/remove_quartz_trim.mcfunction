# Remove quartz max health.
execute unless predicate trim_effects:trim/quartz_trim/quartz_head run attribute @s max_health modifier remove quartz_head
execute unless predicate trim_effects:trim/quartz_trim/quartz_chest run attribute @s max_health modifier remove quartz_chest
execute unless predicate trim_effects:trim/quartz_trim/quartz_legs run attribute @s max_health modifier remove quartz_legs
execute unless predicate trim_effects:trim/quartz_trim/quartz_feet run attribute @s max_health modifier remove quartz_feet

# Remove quartz_trim tag
execute unless predicate trim_effects:trim/quartz_trim/quartz_head run tag @s remove quartz_head
execute unless predicate trim_effects:trim/quartz_trim/quartz_chest run tag @s remove quartz_chest
execute unless predicate trim_effects:trim/quartz_trim/quartz_legs run tag @s remove quartz_legs
execute unless predicate trim_effects:trim/quartz_trim/quartz_feet run tag @s remove quartz_feet

# tellraw @s "Quartz Removed"
