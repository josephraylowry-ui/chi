execute store result storage eden:temp waypoint.x int 1 run data get entity @s Pos[0]
execute store result storage eden:temp waypoint.y int 1 run data get entity @s Pos[1]
execute store result storage eden:temp waypoint.z int 1 run data get entity @s Pos[2]
data modify storage eden:temp waypoint.dimension set from entity @p Dimension

execute if data storage eden:temp waypoint{dimension: "minecraft:overworld"} run data modify storage eden:temp waypoint.dimension_name set value "Overworld"
execute if data storage eden:temp waypoint{dimension: "minecraft:the_end"} run data modify storage eden:temp waypoint.dimension_name set value "The End"
execute if data storage eden:temp waypoint{dimension: "minecraft:the_nether"} run data modify storage eden:temp waypoint.dimension_name set value "The Nether"
execute if data storage eden:temp waypoint{dimension: "wawo:astral_plane"} run data modify storage eden:temp waypoint.dimension_name set value "Astral Plane"
execute if data storage eden:temp waypoint{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp waypoint.dimension_name set value "Deep Blue"

execute \
unless data storage eden:temp waypoint{dimension: "minecraft:overworld"} \
unless data storage eden:temp waypoint{dimension: "minecraft:the_end"} \
unless data storage eden:temp waypoint{dimension: "minecraft:the_nether"} \
unless data storage eden:temp waypoint{dimension: "wawo:astral_plane"} \
unless data storage eden:temp waypoint{dimension: "kattersstructures:deep_blue"} \
run data modify storage eden:temp waypoint.dimension_name set from storage eden:temp waypoint.dimension