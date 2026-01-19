schedule function mob_manager:check_gamerules 300s

execute store result storage eden:temp mob_manager.gamerules.insomnia int 1 run gamerule spawn_phantoms
execute if data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{insomnia:1} run data modify storage eden:settings mob_manager.gamerules.insomnia_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.warden int 1 run gamerule spawn_wardens
execute if data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{warden:1} run data modify storage eden:settings mob_manager.gamerules.warden_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.cmdfeedback int 1 run gamerule send_command_feedback
execute if data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{cmdfeedback:1} run data modify storage eden:settings mob_manager.gamerules.cmdfeedback_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.raids int 1 run gamerule raids
execute if data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "true"
execute unless data storage eden:temp mob_manager.gamerules{raids:1} run data modify storage eden:settings mob_manager.gamerules.raids_initial set value "false"

execute store result storage eden:temp mob_manager.gamerules.mobloot int 1 run gamerule mob_drops
execute if data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{mobloot:1} run data modify storage eden:settings mob_manager.gamerules.mobloot_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.patrols int 1 run gamerule spawn_patrols
execute if data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{patrols:1} run data modify storage eden:settings mob_manager.gamerules.patrols_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.trader int 1 run gamerule spawn_wandering_traders
execute if data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{trader:1} run data modify storage eden:settings mob_manager.gamerules.trader_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.griefing int 1 run gamerule mob_griefing
execute if data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{griefing:1} run data modify storage eden:settings mob_manager.gamerules.griefing_initial set value "true"

execute store result storage eden:temp mob_manager.gamerules.locatorbar int 1 run gamerule locator_bar
execute if data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "false"
execute unless data storage eden:temp mob_manager.gamerules{locatorbar:1} run data modify storage eden:settings mob_manager.gamerules.locatorbar_initial set value "true"

execute store result storage eden:settings mob_manager.gamerules.cramming int 1 run gamerule max_entity_cramming