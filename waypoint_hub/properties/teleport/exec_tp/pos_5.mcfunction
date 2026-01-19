$execute unless data storage eden:database waypoints.hubs.$(id).profile{name:"$(executor)"} \
    if data storage eden:database waypoints.hubs.$(id){announcement:"enabled"} run \
        playsound minecraft:entity.chicken.egg neutral $(owner) ~ ~ ~ .5 2

$execute unless data storage eden:database waypoints.hubs.$(id).profile{name:"$(executor)"} \
    if data storage eden:database waypoints.hubs.$(id){announcement:"enabled"} run \
        tellraw $(owner) [\
            {"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},\
            {"bold":false,"color":"white","italic":false,"text":"$(executor) "},\
            {"bold":false,"color":"white","italic":false,"translate":"message.warping_wonders.waypoint_hub.visitor"},\
            {"bold":false,"color":"$(color)","italic":false,"text":" $(name)"},\
            {"bold":false,"color":"white","italic":false,"text":"."}\
        ]

$execute if data storage eden:settings warping_wonders.waypoint_hub{mob_teleport:"enabled"} as @e[nbt={leash: {UUID:$(uuid)}}] in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~-1
$execute at @s unless predicate wawo:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @s ~1 ~.5 ~-1
$execute at @s if predicate wawo:entity/is_riding in $(dimension) positioned $(x) $(y) $(z) run tp @n[type=#wawo:is_mount] ~1 ~.5 ~-1

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ .5 0.5
particle minecraft:reverse_portal ~ ~.5 ~ .3 .7 .3 0 100

$experience add @s -$(exp_cost) levels
$tellraw @s [\
    {"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},\
    {"bold":false,"color":"white","italic":false,"translate":"message.warping_wonders.waypoint_hub.teleport_to"},\
    {"bold":false,"color":"$(color)","italic":false,"text":" $(name)"},\
    {"bold":false,"color":"white","italic":false,"text":"."}\
]

$execute in $(dimension) positioned $(x) $(y) $(z) run forceload remove ~ ~
data remove storage eden:temp waypoint.teleport