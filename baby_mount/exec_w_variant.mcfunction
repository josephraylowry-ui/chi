$summon $(type) ~ ~ ~ {variant:"$(variant)",Age:1200,Color:$(color_parent),Tags:["mob_manager.baby_mount.set"],Passengers:[{id:"minecraft:$(type)",Age:-999999999,Color:$(color_baby),IsBaby:1b,variant:"$(variant)",Tags:["mob_manager.settings.applied","mob_manager.settings.perma_baby"]}]}
tp @s ~ -3000 ~
kill @s