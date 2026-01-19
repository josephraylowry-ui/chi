playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8
setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]
setblock ~ ~1 ~ light[level=5] destroy

$summon item_display ~.5 ~1.06 ~.5 {\
    billboard:"fixed",\
    item_display:"none",\
    Tags:["wawo.waypoint_hub.display"],\
    Passengers:[\
        {\
            id:"minecraft:item_display",\
            billboard:"fixed",\
            item_display:"fixed",\
            start_interpolation:-1,\
            interpolation_duration:1000,\
            teleport_duration:1000,\
            Tags:["wawo.waypoint_hub.icon","wawo.waypoint_hub.display"],\
            Passengers:[\
                {\
                    id:"minecraft:text_display",\
                    billboard:"vertical",\
                    shadow:1b,\
                    Tags:["wawo.waypoint_hub.display"],\
                    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.4f,0.4f,0.4f]},\
                    text:{"color":"#FFFFFF","text":"Waypoint"},\
                    text_opacity:196,\
                    background:16711680\
                }\
            ],\
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.85f,0.85f,0.85f]},\
            item:{\
                id:"minecraft:player_head",\
                count:1,\
                components:{"minecraft:profile":$(profile)}\
            }\
        }\
    ],\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.56f,0f],scale:[1.0f,1.0f,1.0f]},\
    item:{id:"minecraft:barrel",count:1,components:{"minecraft:item_model":"wawo:waypoint_hub/$(type)"}}\
}

execute as @n[type=item_display,tag=wawo.waypoint_hub.icon,distance=..8] at @s run summon interaction ~ ~ ~ {width:.5f,height:.5f,response:1b,Tags:["wawo.waypoint_hub.interaction"]}

data modify entity @n[type=minecraft:text_display,distance=..8] CustomName set from entity @s CustomName
data modify entity @n[type=minecraft:text_display,distance=..8] text.text set from entity @s CustomName

$summon marker ~.5 ~ ~.5 {Tags:["wawo.waypoint_hub.marker","wawo.waypoint_hub.type.$(type)"],CustomName:"Waypoint"}
data modify entity @n[type=minecraft:marker,distance=..8] CustomName set from entity @s CustomName