schedule function mob_manager:rarity_mobs/init 1s

execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.rarity_mobs.applied,tag=!mob_manager.settings.exclude] run function mob_manager:rarity_mobs/exec with storage eden:settings mob_manager.rarity_mobs.mythic
execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.rarity_mobs.applied,tag=!mob_manager.settings.exclude] run function mob_manager:rarity_mobs/exec with storage eden:settings mob_manager.rarity_mobs.common
execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.rarity_mobs.applied,tag=!mob_manager.settings.exclude] run function mob_manager:rarity_mobs/exec with storage eden:settings mob_manager.rarity_mobs.rare
execute as @e[type=!#mob_manager:invalid_for_settings,tag=!mob_manager.rarity_mobs.applied,tag=!mob_manager.settings.exclude] run function mob_manager:rarity_mobs/exec with storage eden:settings mob_manager.rarity_mobs.legendary