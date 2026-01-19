$dialog show @s \
{\
  "type": "minecraft:multi_action",\
  "title": {\
    "translate": "item.warping_wonders.portal_horn"\
  },\
  "body": {\
    "type": "minecraft:plain_message",\
    "contents": {\
      "translate": "menu.warping_wonders.portal_horn.main.description",\
      "italic": false\
    }\
  },\
  "can_close_with_escape": true,\
  "pause": false,\
  "after_action": "close",\
  "exit_action": {\
    "label": {\
      "translate": "mco.selectServer.close"\
    }\
  },\
  "columns": 3,\
  "actions": $(actions)\
}