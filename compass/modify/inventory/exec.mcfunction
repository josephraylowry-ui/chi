$execute unless data entity @s Inventory[{Slot:$(data)b}].components.minecraft:lodestone_tracker.target run return run item modify entity @s inventory.$(slot) wawo:remove_components

$data modify storage eden:temp compass.data.x set from entity @s Inventory[{Slot:$(data)b}].components.minecraft:lodestone_tracker.target.pos[0]
$data modify storage eden:temp compass.data.y set from entity @s Inventory[{Slot:$(data)b}].components.minecraft:lodestone_tracker.target.pos[1]
$data modify storage eden:temp compass.data.z set from entity @s Inventory[{Slot:$(data)b}].components.minecraft:lodestone_tracker.target.pos[2]
$data modify storage eden:temp compass.data.dimension set from entity @s Inventory[{Slot:$(data)b}].components.minecraft:lodestone_tracker.target.dimension

execute if data storage eden:temp compass.data{dimension: "minecraft:overworld"} run data modify storage eden:temp compass.data.dimension set value "Overworld"
execute if data storage eden:temp compass.data{dimension: "minecraft:the_end"} run data modify storage eden:temp compass.data.dimension set value "The End"
execute if data storage eden:temp compass.data{dimension: "minecraft:the_nether"} run data modify storage eden:temp compass.data.dimension set value "The Nether"
execute if data storage eden:temp compass.data{dimension: "wawo:astral_plane"} run data modify storage eden:temp compass.data.dimension set value "Astral Plane"
execute if data storage eden:temp compass.data{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp compass.data.dimension set value "Deep Blue"

$item modify entity @s inventory.$(slot) wawo:compass