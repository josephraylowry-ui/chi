# Quartz increase max health.
execute if predicate trim_effects:trim/quartz_trim/quartz_head run attribute @s max_health modifier add quartz_head 2.5 add_value
execute if predicate trim_effects:trim/quartz_trim/quartz_chest run attribute @s max_health modifier add quartz_chest 2.5 add_value
execute if predicate trim_effects:trim/quartz_trim/quartz_legs run attribute @s max_health modifier add quartz_legs 2.5 add_value
execute if predicate trim_effects:trim/quartz_trim/quartz_feet run attribute @s max_health modifier add quartz_feet 2.5 add_value

# Tag as trimmed with quartz
execute if predicate trim_effects:trim/quartz_trim/quartz_head run tag @s add quartz_head
execute if predicate trim_effects:trim/quartz_trim/quartz_chest run tag @s add quartz_chest
execute if predicate trim_effects:trim/quartz_trim/quartz_legs run tag @s add quartz_legs
execute if predicate trim_effects:trim/quartz_trim/quartz_feet run tag @s add quartz_feet

# tellraw @s "Quartz Applied"
