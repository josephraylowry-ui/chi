execute store result storage eden:temp waypoint_hub.menu.waypoint_id int 1 run scoreboard players add $waypoint_menu_id wawo.technical 1

$execute \
    if data storage eden:database waypoints.hubs.$(waypoint_id){access:"private"} \
        run execute unless data entity @p[tag=wawo.opened_waypoint,distance=..16] {UUID:$(uuid)} \
            run return run function wawo:waypoint_hub/interact/right_click/menu/build/init with storage eden:temp waypoint_hub.menu

$data modify storage eden:temp waypoint_hub.menu.waypoint_menu append value \
    {\
      "label": {\
        "text": "$(waypoint_name)",\
        "color": "$(color)"\
      },\
      "tooltip": [\
        [\
          "$(waypoint_description)",\
          {\
            "text": "X: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_x)",\
            "color": "white"\
          },\
          {\
            "text": " | Y: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_y)",\
            "color": "white"\
          },\
          {\
            "text": " | Z: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(waypoint_z)",\
            "color": "white"\
          },\
          "\n",\
          {\
            "translate": "gui.warping_wonders.waypoint_hub.dimension"\
          },\
          {\
            "text": "$(dimension_name)",\
            "color": "white"\
          },\
          "\n\n",\
          {\
            "translate": "gui.warping_wonders.waypoint_hub.owner"\
          },\
          {\
          "player": {\
            "name": "$(owner)"\
          },\
          "color": "white"\
          },\
          " ",\
          {\
            "text": "$(owner)",\
            "color": "white"\
          },\
          {\
            "text": " | ID: ",\
            "color": "dark_gray"\
          },\
          {\
            "text": "$(id)",\
            "color": "white"\
          }\
        ]\
      ],\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger wawo.waypoint_hub.menu.teleport set $(id)"\
      }\
    }

function wawo:waypoint_hub/interact/right_click/menu/build/init with storage eden:temp waypoint_hub.menu