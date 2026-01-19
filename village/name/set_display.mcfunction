
$execute unless entity @e[type=text_display,tag=mob_manager.village.name,distance=..8] if block ~ ~1 ~ #minecraft:air run return run summon text_display ~ ~1.05 ~ {billboard:"vertical",shadow:1b,Tags:["mob_manager.village.name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:$(CustomName),background:16711680}
$execute unless entity @e[type=text_display,tag=mob_manager.village.name,distance=..8] if block ~ ~-1 ~ #minecraft:air run return run summon text_display ~ ~-0.2 ~ {billboard:"vertical",shadow:1b,Tags:["mob_manager.village.name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:$(CustomName),background:16711680}

