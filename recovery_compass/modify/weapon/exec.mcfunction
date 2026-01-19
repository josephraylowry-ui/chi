data modify storage eden:temp recovery_compass.data.x set from entity @s LastDeathLocation.pos[0]
data modify storage eden:temp recovery_compass.data.y set from entity @s LastDeathLocation.pos[1]
data modify storage eden:temp recovery_compass.data.z set from entity @s LastDeathLocation.pos[2]
data modify storage eden:temp recovery_compass.data.dimension set from entity @s LastDeathLocation.dimension

execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:overworld"} run data modify storage eden:temp recovery_compass.data.dimension set value "Overworld"
execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:the_end"} run data modify storage eden:temp recovery_compass.data.dimension set value "The End"
execute if data storage eden:temp recovery_compass.data{dimension: "minecraft:the_nether"} run data modify storage eden:temp recovery_compass.data.dimension set value "The Nether"
execute if data storage eden:temp recovery_compass.data{dimension: "wawo:astral_plane"} run data modify storage eden:temp recovery_compass.data.dimension set value "Astral Plane"
execute if data storage eden:temp recovery_compass.data{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp recovery_compass.data.dimension set value "Deep Blue"

$item modify entity @s weapon.$(slot) wawo:recovery_compass