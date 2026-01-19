execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} run title @s title {"color":"gray","bold":false,"italic":false,"text":" "}
$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"title"} run title @s subtitle [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"actionbar"} run title @s actionbar [{"bold":false,"color":"gray","italic":false,"text":"- "},$(CustomName),{"bold":false,"color":"gray","italic":false,"text":" -"}]
$execute if data storage eden:settings mob_manager.villager_settings{villagename_msg:"chat"} run tellraw @s [{"bold":false,"color":"gray","italic":false,"text":"▊ "},{"bold":false,"color":"gray","italic":false,"text":"Entered Village: "},$(CustomName)]

playsound minecraft:entity.villager.work_cartographer neutral @s ~ ~ ~ .75 1

tag @s add at_village
tag @s remove not_at_village