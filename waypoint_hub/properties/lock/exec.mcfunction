$execute if data storage eden:database waypoints.hubs.$(id){access:"private"} \
        unless entity @e[type=text_display,tag=wawo.waypoint_hub.display.lock,distance=..4] \
            run summon text_display ~ ~2 ~ {\
                billboard:"vertical",\
                text_opacity:196,\
                Tags:["wawo.waypoint_hub.display.lock"],\
                transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.57f,0f],scale:[0.4f,0.6f,0.4f]},\
                text:{"atlas":"minecraft:gui","color":"white","sprite":"container/cartography_table/locked"},\
                background:16711680\
            }

execute as @e[type=text_display,tag=wawo.waypoint_hub.display.lock] at @s \
    run ride @s mount @n[type=text_display,tag=wawo.waypoint_hub.display,distance=..4]

$execute if data storage eden:database waypoints.hubs.$(id){access:"public"} \
    as @n[type=text_display,tag=wawo.waypoint_hub.display.lock,distance=..4] at @s \
        run kill @s