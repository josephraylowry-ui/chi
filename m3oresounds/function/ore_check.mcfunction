
# Checks if a player has mined any type of ore compatible with ore sounds, and if so, plays an ore mined sound
# This code is terribly written but I mean it works soooo

# Coal
$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.iron.break, volume:1.13, pitch:1.23, persist:0}
#$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.iron.break, volume:0.58, pitch:0.76, persist:1}
#$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.iron.break, volume:1.17, pitch:0.5, persist:1}
#$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.polished_tuff.break, volume:0.1, pitch:1.2, persist:0}

#$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.netherite_block.break, volume:0.03, pitch:1.6, persist:0}
#$function m3oresounds:ore_mined {ore:$(prefix)coal_ore, sound:block.metal.break, volume:1, pitch:0.8, persist:0}

# Iron
$function m3oresounds:ore_mined {ore:$(prefix)iron_ore, sound:block.netherite_block.break, volume:1.5, pitch:1.12, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)iron_ore, sound:block.netherite_block.break, volume:0.75, pitch:0.7, persist:0}

# Copper
$function m3oresounds:ore_mined {ore:$(prefix)copper_ore, sound:block.copper.break, volume:1.4, pitch:1.05, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)copper_ore, sound:block.copper.break, volume:1.0, pitch:0.6, persist:0}

# Gold
$function m3oresounds:ore_mined {ore:$(prefix)gold_ore, sound:block.netherite_block.break, volume:2.23, pitch:1.6, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)gold_ore, sound:block.amethyst_block.resonate, volume:0.2, pitch:1.43, persist:0}

# Redstone
$function m3oresounds:ore_mined {ore:$(prefix)redstone_ore, sound:block.iron.break, volume:1.4, pitch:1.36, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)redstone_ore, sound:block.amethyst_block.resonate, volume:0.176, pitch:1.2, persist:0}

# Emerald
$function m3oresounds:ore_mined {ore:$(prefix)emerald_ore, sound:block.netherite_block.break, volume:1.2, pitch:2, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)emerald_ore, sound:block.amethyst_block.resonate, volume:0.87, pitch:1.43, persist:0}

# Lapis
$function m3oresounds:ore_mined {ore:$(prefix)lapis_ore, sound:block.iron.break, volume:1.76, pitch:1.67, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)lapis_ore, sound:block.amethyst_block.resonate, volume:0.32, pitch:1.3, persist:0}

# Diamond
$function m3oresounds:ore_mined {ore:$(prefix)diamond_ore, sound:block.netherite_block.break, volume:0.88, pitch:0.8, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)diamond_ore, sound:block.netherite_block.break, volume:1.64, pitch:2, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)diamond_ore, sound:block.amethyst_block.resonate, volume:0.55, pitch:1.67, persist:1}
$function m3oresounds:ore_mined {ore:$(prefix)diamond_ore, sound:entity.player.levelup, volume:0.029, pitch:1.92, persist:0}
