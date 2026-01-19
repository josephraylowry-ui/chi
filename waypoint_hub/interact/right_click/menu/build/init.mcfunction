$execute \
    unless data storage eden:database waypoints.hubs.$(waypoint_id) \
    if score $waypoint_menu_id wawo.technical <= $unique_waypoint_id wawo.waypoint_hub.id \
        run return run function wawo:waypoint_hub/interact/right_click/menu/build/entry/skip

$data modify storage eden:temp waypoint_hub.menu.waypoint_name set from storage eden:database waypoints.hubs.$(waypoint_id).waypoint_name
$data modify storage eden:temp waypoint_hub.menu.waypoint_x set from storage eden:database waypoints.hubs.$(waypoint_id).pos.x
$data modify storage eden:temp waypoint_hub.menu.waypoint_y set from storage eden:database waypoints.hubs.$(waypoint_id).pos.y
$data modify storage eden:temp waypoint_hub.menu.waypoint_z set from storage eden:database waypoints.hubs.$(waypoint_id).pos.z
$data modify storage eden:temp waypoint_hub.menu.dimension_name set from storage eden:database waypoints.hubs.$(waypoint_id).dimension_name
$data modify storage eden:temp waypoint_hub.menu.owner set from storage eden:database waypoints.hubs.$(waypoint_id).profile.name
$data modify storage eden:temp waypoint_hub.menu.uuid set from storage eden:database waypoints.hubs.$(waypoint_id).profile.id
$data modify storage eden:temp waypoint_hub.menu.access set from storage eden:database waypoints.hubs.$(waypoint_id).access
$data modify storage eden:temp waypoint_hub.menu.id set value $(waypoint_id)

$execute if data storage eden:database waypoints.hubs.$(waypoint_id).waypoint_description run data modify storage eden:temp waypoint_hub.menu.waypoint_description set from storage eden:database waypoints.hubs.$(waypoint_id).waypoint_description
$execute unless data storage eden:database waypoints.hubs.$(waypoint_id).waypoint_description run data modify storage eden:temp waypoint_hub.menu.waypoint_description set value ""

$execute unless data storage eden:database waypoints.hubs.$(waypoint_id).color run data modify storage eden:database waypoints.hubs.$(waypoint_id).color set value "#ffffff"
$data modify storage eden:temp waypoint_hub.menu.color set from storage eden:database waypoints.hubs.$(waypoint_id).color

execute if score $waypoint_menu_id wawo.technical = $unique_waypoint_id wawo.waypoint_hub.id run return run function wawo:waypoint_hub/interact/right_click/menu/build/entry/end with storage eden:temp waypoint_hub.menu
execute if score $waypoint_menu_id wawo.technical < $unique_waypoint_id wawo.waypoint_hub.id run return run function wawo:waypoint_hub/interact/right_click/menu/build/entry/add with storage eden:temp waypoint_hub.menu