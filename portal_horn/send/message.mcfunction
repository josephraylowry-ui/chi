$playsound minecraft:entity.chicken.egg neutral $(player) ~ ~ ~ .5 2
$tellraw $(player) [\
    {"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},\
    {"bold":false,"color":"white","italic":false,"text":"$(requestor) "},\
    {"bold":false,"color":"white","italic":false,"translate":"message.warping_wonders.portal_horn.request"},\
    " ",\
    {"bold":false,"click_event":{"action":"run_command","command":"/trigger wawo.portal_horn.teleport.accept set $(requestor_id)"},"color":"dark_purple","italic":false,"translate":"message.warping_wonders.portal_horn.prompt"}\
]

$playsound minecraft:entity.chicken.egg neutral $(requestor) ~ ~ ~ .5 2
$tellraw $(requestor) [\
    {"bold":false,"color":"dark_purple","italic":false,"text":"▊ "},\
    {"bold":false,"color":"white","italic":false,"text":"$(player) "},\
    {"bold":false,"color":"white","italic":false,"translate":"message.warping_wonders.portal_horn.request_send"},\
]

$scoreboard players enable $(player) wawo.portal_horn.teleport.accept
$experience add $(requestor) -$(exp_cost) levels