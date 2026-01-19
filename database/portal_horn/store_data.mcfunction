$data modify storage eden:database portal_horn.$(id).name set from storage eden:temp portal_horn.name
$data modify storage eden:database portal_horn.$(id).uuid set from storage eden:temp portal_horn.uuid

$data modify storage eden:database portal_horn.actions append value \
{\
      "label": "$(name)",\
      "action": {\
        "type": "minecraft:run_command",\
        "command": "trigger wawo.portal_horn.teleport.send set $(id)"\
      }\
    }