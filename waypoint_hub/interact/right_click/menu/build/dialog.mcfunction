$dialog show @p[tag=wawo.opened_waypoint,distance=..16] \
{\
  "type": "minecraft:multi_action",\
  "body": [\
    {\
      "type": "minecraft:plain_message",\
      "contents": [\
        {\
          "translate": "gui.warping_wonders.waypoint_hub.owner",\
          "color": "gray"\
        },\
        "$(home_owner)",\
        {\
          "text": " | ",\
          "color": "dark_gray",\
          "bold": true\
        },\
        "X: ",\
        "$(home_waypoint_x)",\
        " | Y: ",\
        "$(home_waypoint_y)",\
        " | Z: ",\
        "$(home_waypoint_z)",\
        {\
          "text": " | ",\
          "color": "dark_gray",\
          "bold": true\
        },\
        {\
          "translate": "gui.warping_wonders.waypoint_hub.dimension"\
        },\
        "$(home_dimension_name)",\
        {\
          "text": " | ",\
          "color": "dark_gray",\
          "bold": true\
        },\
        "ID: ",\
        "$(home_id)"\
      ],\
      "width": 512\
    },\
    {\
      "type": "minecraft:plain_message",\
      "contents": {\
        "translate": "menu.warping_wonders.waypoint_hub.main.description",\
        "color": "white",\
        "italic": false\
      }\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": false,\
  "after_action": "close",\
  "exit_action": {\
    "label": {\
      "translate": "mco.selectServer.close"\
    }\
  },\
  "external_title": {\
    "text": "$(home_waypoint_name)",\
    "color": "$(home_color)"\
  },\
  "title": {\
    "text": "$(home_waypoint_name)",\
    "color": "$(home_color)"\
  },\
  "columns": 3,\
  "actions": $(waypoint_menu)\
}

playsound minecraft:entity.chicken.egg neutral @p[tag=wawo.opened_waypoint,distance=..16] ~ ~ ~ .5 2
scoreboard players enable @p[tag=wawo.opened_waypoint,distance=..16] wawo.waypoint_hub.menu.teleport
tag @p[tag=wawo.opened_waypoint,distance=..16] remove wawo.opened_waypoint