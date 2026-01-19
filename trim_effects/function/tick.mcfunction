# Run amethyst_trim if wearing amethyst trimmed armor
execute as @e at @s if predicate trim_effects:trim/amethyst_trim/amethyst_trim run function trim_effects:trim_effects/amethyst_trim/amethyst_trim_particle
execute as @e at @s[tag=!amethyst_head] if predicate trim_effects:trim/amethyst_trim/amethyst_head run function trim_effects:trim_effects/amethyst_trim/apply_amethyst_trim
execute as @e at @s[tag=!amethyst_chest] if predicate trim_effects:trim/amethyst_trim/amethyst_chest run function trim_effects:trim_effects/amethyst_trim/apply_amethyst_trim
execute as @e at @s[tag=!amethyst_legs] if predicate trim_effects:trim/amethyst_trim/amethyst_legs run function trim_effects:trim_effects/amethyst_trim/apply_amethyst_trim
execute as @e at @s[tag=!amethyst_feet] if predicate trim_effects:trim/amethyst_trim/amethyst_feet run function trim_effects:trim_effects/amethyst_trim/apply_amethyst_trim
execute as @e at @s[tag=amethyst_head] unless predicate trim_effects:trim/amethyst_trim/amethyst_head run function trim_effects:trim_effects/amethyst_trim/remove_amethyst_trim
execute as @e at @s[tag=amethyst_chest] unless predicate trim_effects:trim/amethyst_trim/amethyst_chest run function trim_effects:trim_effects/amethyst_trim/remove_amethyst_trim
execute as @e at @s[tag=amethyst_legs] unless predicate trim_effects:trim/amethyst_trim/amethyst_legs run function trim_effects:trim_effects/amethyst_trim/remove_amethyst_trim
execute as @e at @s[tag=amethyst_feet] unless predicate trim_effects:trim/amethyst_trim/amethyst_feet run function trim_effects:trim_effects/amethyst_trim/remove_amethyst_trim

# Run copper_trim if wearing copper trimmed armor
execute as @e at @s if predicate trim_effects:trim/copper_trim/copper_trim run function trim_effects:trim_effects/copper_trim/copper_trim_particle
execute as @e at @s[tag=!copper_head] if predicate trim_effects:trim/copper_trim/copper_head run function trim_effects:trim_effects/copper_trim/apply_copper_trim
execute as @e at @s[tag=!copper_chest] if predicate trim_effects:trim/copper_trim/copper_chest run function trim_effects:trim_effects/copper_trim/apply_copper_trim
execute as @e at @s[tag=!copper_legs] if predicate trim_effects:trim/copper_trim/copper_legs run function trim_effects:trim_effects/copper_trim/apply_copper_trim
execute as @e at @s[tag=!copper_feet] if predicate trim_effects:trim/copper_trim/copper_feet run function trim_effects:trim_effects/copper_trim/apply_copper_trim
execute as @e at @s[tag=copper_head] unless predicate trim_effects:trim/copper_trim/copper_head run function trim_effects:trim_effects/copper_trim/remove_copper_trim
execute as @e at @s[tag=copper_chest] unless predicate trim_effects:trim/copper_trim/copper_chest run function trim_effects:trim_effects/copper_trim/remove_copper_trim
execute as @e at @s[tag=copper_legs] unless predicate trim_effects:trim/copper_trim/copper_legs run function trim_effects:trim_effects/copper_trim/remove_copper_trim
execute as @e at @s[tag=copper_feet] unless predicate trim_effects:trim/copper_trim/copper_feet run function trim_effects:trim_effects/copper_trim/remove_copper_trim

# Run diamond_trim if wearing diamond trimmed armor
execute as @e at @s if predicate trim_effects:trim/diamond_trim/diamond_trim run function trim_effects:trim_effects/diamond_trim/diamond_trim_particle
execute as @e at @s[tag=!diamond_head] if predicate trim_effects:trim/diamond_trim/diamond_head run function trim_effects:trim_effects/diamond_trim/apply_diamond_trim
execute as @e at @s[tag=!diamond_chest] if predicate trim_effects:trim/diamond_trim/diamond_chest run function trim_effects:trim_effects/diamond_trim/apply_diamond_trim
execute as @e at @s[tag=!diamond_legs] if predicate trim_effects:trim/diamond_trim/diamond_legs run function trim_effects:trim_effects/diamond_trim/apply_diamond_trim
execute as @e at @s[tag=!diamond_feet] if predicate trim_effects:trim/diamond_trim/diamond_feet run function trim_effects:trim_effects/diamond_trim/apply_diamond_trim
execute as @e at @s[tag=diamond_head] unless predicate trim_effects:trim/diamond_trim/diamond_head run function trim_effects:trim_effects/diamond_trim/remove_diamond_trim
execute as @e at @s[tag=diamond_chest] unless predicate trim_effects:trim/diamond_trim/diamond_chest run function trim_effects:trim_effects/diamond_trim/remove_diamond_trim
execute as @e at @s[tag=diamond_legs] unless predicate trim_effects:trim/diamond_trim/diamond_legs run function trim_effects:trim_effects/diamond_trim/remove_diamond_trim
execute as @e at @s[tag=diamond_feet] unless predicate trim_effects:trim/diamond_trim/diamond_feet run function trim_effects:trim_effects/diamond_trim/remove_diamond_trim

# Run emerald_trim if wearing emerald trimmed armor
execute as @e at @s if predicate trim_effects:trim/emerald_trim/emerald_trim run function trim_effects:trim_effects/emerald_trim/emerald_trim_particle
execute as @e at @s[tag=!emerald_head] if predicate trim_effects:trim/emerald_trim/emerald_head unless predicate trim_effects:sneaking run function trim_effects:trim_effects/emerald_trim/apply_emerald_trim
execute as @e at @s[tag=!emerald_chest] if predicate trim_effects:trim/emerald_trim/emerald_chest unless predicate trim_effects:sneaking run function trim_effects:trim_effects/emerald_trim/apply_emerald_trim
execute as @e at @s[tag=!emerald_legs] if predicate trim_effects:trim/emerald_trim/emerald_legs unless predicate trim_effects:sneaking run function trim_effects:trim_effects/emerald_trim/apply_emerald_trim
execute as @e at @s[tag=!emerald_feet] if predicate trim_effects:trim/emerald_trim/emerald_feet unless predicate trim_effects:sneaking run function trim_effects:trim_effects/emerald_trim/apply_emerald_trim
execute as @e at @s[tag=emerald_head] unless predicate trim_effects:trim/emerald_trim/emerald_head run function trim_effects:trim_effects/emerald_trim/remove_emerald_trim
execute as @e at @s[tag=emerald_chest] unless predicate trim_effects:trim/emerald_trim/emerald_chest run function trim_effects:trim_effects/emerald_trim/remove_emerald_trim
execute as @e at @s[tag=emerald_legs] unless predicate trim_effects:trim/emerald_trim/emerald_legs run function trim_effects:trim_effects/emerald_trim/remove_emerald_trim
execute as @e at @s[tag=emerald_feet] unless predicate trim_effects:trim/emerald_trim/emerald_feet run function trim_effects:trim_effects/emerald_trim/remove_emerald_trim
execute as @e at @s if predicate trim_effects:trim/emerald_trim/emerald_trim if predicate trim_effects:sneaking run function trim_effects:trim_effects/emerald_trim/remove_emerald_trim

# Run gold_trim if wearing gold trimmed armor
execute as @e at @s if predicate trim_effects:trim/gold_trim/gold_trim run function trim_effects:trim_effects/gold_trim/gold_trim_particle
execute as @e at @s[tag=!gold_head] if predicate trim_effects:trim/gold_trim/gold_head run function trim_effects:trim_effects/gold_trim/apply_gold_trim
execute as @e at @s[tag=!gold_chest] if predicate trim_effects:trim/gold_trim/gold_chest run function trim_effects:trim_effects/gold_trim/apply_gold_trim
execute as @e at @s[tag=!gold_legs] if predicate trim_effects:trim/gold_trim/gold_legs run function trim_effects:trim_effects/gold_trim/apply_gold_trim
execute as @e at @s[tag=!gold_feet] if predicate trim_effects:trim/gold_trim/gold_feet run function trim_effects:trim_effects/gold_trim/apply_gold_trim
execute as @e at @s[tag=gold_head] unless predicate trim_effects:trim/gold_trim/gold_head run function trim_effects:trim_effects/gold_trim/remove_gold_trim
execute as @e at @s[tag=gold_chest] unless predicate trim_effects:trim/gold_trim/gold_chest run function trim_effects:trim_effects/gold_trim/remove_gold_trim
execute as @e at @s[tag=gold_legs] unless predicate trim_effects:trim/gold_trim/gold_legs run function trim_effects:trim_effects/gold_trim/remove_gold_trim
execute as @e at @s[tag=gold_feet] unless predicate trim_effects:trim/gold_trim/gold_feet run function trim_effects:trim_effects/gold_trim/remove_gold_trim

# Run iron_trim if wearing iron trimmed armor
execute as @e at @s if predicate trim_effects:trim/iron_trim/iron_trim run function trim_effects:trim_effects/iron_trim/iron_trim_particle
execute as @e at @s[tag=!iron_head] if predicate trim_effects:trim/iron_trim/iron_head run function trim_effects:trim_effects/iron_trim/apply_iron_trim
execute as @e at @s[tag=!iron_chest] if predicate trim_effects:trim/iron_trim/iron_chest run function trim_effects:trim_effects/iron_trim/apply_iron_trim
execute as @e at @s[tag=!iron_legs] if predicate trim_effects:trim/iron_trim/iron_legs run function trim_effects:trim_effects/iron_trim/apply_iron_trim
execute as @e at @s[tag=!iron_feet] if predicate trim_effects:trim/iron_trim/iron_feet run function trim_effects:trim_effects/iron_trim/apply_iron_trim
execute as @e at @s[tag=iron_head] unless predicate trim_effects:trim/iron_trim/iron_head run function trim_effects:trim_effects/iron_trim/remove_iron_trim
execute as @e at @s[tag=iron_chest] unless predicate trim_effects:trim/iron_trim/iron_chest run function trim_effects:trim_effects/iron_trim/remove_iron_trim
execute as @e at @s[tag=iron_legs] unless predicate trim_effects:trim/iron_trim/iron_legs run function trim_effects:trim_effects/iron_trim/remove_iron_trim
execute as @e at @s[tag=iron_feet] unless predicate trim_effects:trim/iron_trim/iron_feet run function trim_effects:trim_effects/iron_trim/remove_iron_trim

# Run lapis_trim if exp orb has not been checked
execute as @e[type=experience_orb,tag=!lapis_xp_orb] at @s run function trim_effects:trim_effects/lapis_trim/lapis_trim
execute as @e at @s if predicate trim_effects:trim/lapis_trim/lapis_trim run function trim_effects:trim_effects/lapis_trim/lapis_trim_particle

# Run netherite_trim if wearing netherite trimmed armor
execute as @e at @s if predicate trim_effects:trim/netherite_trim/netherite_trim run function trim_effects:trim_effects/netherite_trim/netherite_trim_particle
execute as @e at @s[tag=!netherite_head] if predicate trim_effects:trim/netherite_trim/netherite_head run function trim_effects:trim_effects/netherite_trim/apply_netherite_trim
execute as @e at @s[tag=!netherite_chest] if predicate trim_effects:trim/netherite_trim/netherite_chest run function trim_effects:trim_effects/netherite_trim/apply_netherite_trim
execute as @e at @s[tag=!netherite_legs] if predicate trim_effects:trim/netherite_trim/netherite_legs run function trim_effects:trim_effects/netherite_trim/apply_netherite_trim
execute as @e at @s[tag=!netherite_feet] if predicate trim_effects:trim/netherite_trim/netherite_feet run function trim_effects:trim_effects/netherite_trim/apply_netherite_trim
execute as @e at @s if predicate trim_effects:trim/netherite_trim/netherite_head if predicate trim_effects:trim/netherite_trim/netherite_chest if predicate trim_effects:trim/netherite_trim/netherite_legs if predicate trim_effects:trim/netherite_trim/netherite_feet run function trim_effects:trim_effects/netherite_trim/apply_netherite_effect
execute as @e at @s[tag=netherite_head] unless predicate trim_effects:trim/netherite_trim/netherite_head run function trim_effects:trim_effects/netherite_trim/remove_netherite_trim
execute as @e at @s[tag=netherite_chest] unless predicate trim_effects:trim/netherite_trim/netherite_chest run function trim_effects:trim_effects/netherite_trim/remove_netherite_trim
execute as @e at @s[tag=netherite_legs] unless predicate trim_effects:trim/netherite_trim/netherite_legs run function trim_effects:trim_effects/netherite_trim/remove_netherite_trim
execute as @e at @s[tag=netherite_feet] unless predicate trim_effects:trim/netherite_trim/netherite_feet run function trim_effects:trim_effects/netherite_trim/remove_netherite_trim

# Run quartz_trim if wearing quartz trimmed armor
execute as @e at @s if predicate trim_effects:trim/quartz_trim/quartz_trim run function trim_effects:trim_effects/quartz_trim/quartz_trim_particle
execute as @e at @s[tag=!quartz_head] if predicate trim_effects:trim/quartz_trim/quartz_head run function trim_effects:trim_effects/quartz_trim/apply_quartz_trim
execute as @e at @s[tag=!quartz_chest] if predicate trim_effects:trim/quartz_trim/quartz_chest run function trim_effects:trim_effects/quartz_trim/apply_quartz_trim
execute as @e at @s[tag=!quartz_legs] if predicate trim_effects:trim/quartz_trim/quartz_legs run function trim_effects:trim_effects/quartz_trim/apply_quartz_trim
execute as @e at @s[tag=!quartz_feet] if predicate trim_effects:trim/quartz_trim/quartz_feet run function trim_effects:trim_effects/quartz_trim/apply_quartz_trim
execute as @e at @s[tag=quartz_head] unless predicate trim_effects:trim/quartz_trim/quartz_head run function trim_effects:trim_effects/quartz_trim/remove_quartz_trim
execute as @e at @s[tag=quartz_chest] unless predicate trim_effects:trim/quartz_trim/quartz_chest run function trim_effects:trim_effects/quartz_trim/remove_quartz_trim
execute as @e at @s[tag=quartz_legs] unless predicate trim_effects:trim/quartz_trim/quartz_legs run function trim_effects:trim_effects/quartz_trim/remove_quartz_trim
execute as @e at @s[tag=quartz_feet] unless predicate trim_effects:trim/quartz_trim/quartz_feet run function trim_effects:trim_effects/quartz_trim/remove_quartz_trim

# Run redstone_trim if wearing redstone trimmed armor
execute as @e at @s if predicate trim_effects:trim/redstone_trim/redstone_trim run function trim_effects:trim_effects/redstone_trim/redstone_trim_particle
execute as @e at @s[tag=!redstone_head] if predicate trim_effects:trim/redstone_trim/redstone_head run function trim_effects:trim_effects/redstone_trim/apply_redstone_trim
execute as @e at @s[tag=!redstone_chest] if predicate trim_effects:trim/redstone_trim/redstone_chest run function trim_effects:trim_effects/redstone_trim/apply_redstone_trim
execute as @e at @s[tag=!redstone_legs] if predicate trim_effects:trim/redstone_trim/redstone_legs run function trim_effects:trim_effects/redstone_trim/apply_redstone_trim
execute as @e at @s[tag=!redstone_feet] if predicate trim_effects:trim/redstone_trim/redstone_feet run function trim_effects:trim_effects/redstone_trim/apply_redstone_trim
execute as @e at @s[tag=redstone_head] unless predicate trim_effects:trim/redstone_trim/redstone_head run function trim_effects:trim_effects/redstone_trim/remove_redstone_trim
execute as @e at @s[tag=redstone_chest] unless predicate trim_effects:trim/redstone_trim/redstone_chest run function trim_effects:trim_effects/redstone_trim/remove_redstone_trim
execute as @e at @s[tag=redstone_legs] unless predicate trim_effects:trim/redstone_trim/redstone_legs run function trim_effects:trim_effects/redstone_trim/remove_redstone_trim
execute as @e at @s[tag=redstone_feet] unless predicate trim_effects:trim/redstone_trim/redstone_feet run function trim_effects:trim_effects/redstone_trim/remove_redstone_trim

# Run resin_trim if wearing resin trimmed armor
execute as @e at @s if predicate trim_effects:trim/resin_trim/resin_trim run function trim_effects:trim_effects/resin_trim/resin_trim_particle
execute as @e at @s if predicate trim_effects:trim/resin_trim/resin_trim if predicate trim_effects:sneaking run function trim_effects:trim_effects/resin_trim/apply_resin_trim
execute as @e at @s[tag=resin_trim] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] if predicate trim_effects:trim/resin_trim/resin_trim unless predicate trim_effects:sneaking run function trim_effects:trim_effects/resin_trim/remove_resin_trim
