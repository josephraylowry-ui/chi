##Trader Team settings
team add wandering_trader "Wandering Trader"
team modify wandering_trader color blue

##default technical scoreboard
scoreboard objectives add mob_manager.technical dummy

##additional scoreboards
scoreboard objectives remove mob_manager.rarity_mobs.common.timer
scoreboard objectives remove mob_manager.rarity_mobs.rare.timer
scoreboard objectives remove mob_manager.rarity_mobs.legendary.timer
scoreboard objectives remove mob_manager.rarity_mobs.mythic.timer
scoreboard objectives add mob_manager.rarity_mobs.common.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.rare.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.legendary.timer dummy
scoreboard objectives add mob_manager.rarity_mobs.mythic.timer dummy
scoreboard objectives add mob_manager.playerhead.id dummy
scoreboard objectives add mob_manager.playerhead.update minecraft.custom:minecraft.leave_game
scoreboard objectives add mob_manager.used.bell minecraft.custom:minecraft.bell_ring
scoreboard objectives add mob_manager.follow.px dummy
scoreboard objectives add mob_manager.follow.py dummy
scoreboard objectives add mob_manager.follow.pz dummy
scoreboard objectives add mob_manager.follow.dx dummy
scoreboard objectives add mob_manager.follow.dy dummy
scoreboard objectives add mob_manager.follow.dz dummy
scoreboard objectives add mob_manager.follow.ex dummy
scoreboard objectives add mob_manager.follow.ey dummy
scoreboard objectives add mob_manager.follow.ez dummy
scoreboard objectives add mob_manager.follow.dx2 dummy
scoreboard objectives add mob_manager.follow.dy2 dummy
scoreboard objectives add mob_manager.follow.dz2 dummy
scoreboard objectives add mob_manager.follow.len2 dummy
scoreboard objectives add mob_manager.follow.motionX dummy
scoreboard objectives add mob_manager.follow.motionZ dummy

##apply default values on first load
execute unless data storage eden:settings mob_manager.misc run function mob_manager:default_values
data modify storage eden:database names.village set from storage eden:database village

##set data pack version
data modify storage eden:datapack nice_mob_manager.version set value "2.7"