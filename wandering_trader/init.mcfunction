execute as @s[tag=pk.at_vi] run return fail

execute if data storage eden:settings mob_manager.wandering_trader_settings{miniblock:"enabled"} at @s run function mob_manager:wandering_trader/trades/miniblock/init
execute if data storage eden:settings mob_manager.wandering_trader_settings{miniblock:"enabled"} at @s run function mob_manager:wandering_trader/trades/miniblock/init
execute if data storage eden:settings mob_manager.wandering_trader_settings{plushie:"enabled"} run function mob_manager:wandering_trader/trades/plushie/init
execute if data storage eden:settings mob_manager.wandering_trader_settings{treasurebook:"enabled"} at @s run function mob_manager:wandering_trader/trades/treasure_book/init

execute if data storage eden:settings mob_manager.wandering_trader_settings{customname:"enabled"} run function mob_manager:wandering_trader/names/init
execute if data storage eden:settings mob_manager.wandering_trader_settings{spawnglow:"enabled"} run function mob_manager:wandering_trader/spawn_glow
execute unless data storage eden:settings mob_manager.wandering_trader_settings{spawnmsg:"disabled"} at @s run function mob_manager:wandering_trader/spawn_msg

