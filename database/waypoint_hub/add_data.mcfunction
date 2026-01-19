$data modify storage eden:database waypoints.hubs.$(id).waypoint_name set from entity @s CustomName
$data modify storage eden:database waypoints.hubs.$(id).pos.x set value $(x)
$data modify storage eden:database waypoints.hubs.$(id).pos.y set value $(y)
$data modify storage eden:database waypoints.hubs.$(id).pos.z set value $(z)
$data modify storage eden:database waypoints.hubs.$(id).id set value $(id)
$data modify storage eden:database waypoints.hubs.$(id).pos.dimension set value "$(dimension)"
$data modify storage eden:database waypoints.hubs.$(id).dimension_name set value "$(dimension_name)"
$data modify storage eden:database waypoints.hubs.$(id).profile set value $(profile)
$data modify storage eden:database waypoints.hubs.$(id).access set value "public"
$data modify storage eden:database waypoints.hubs.$(id).announcement set value "enabled"
$data modify storage eden:database waypoints.hubs.$(id).color set value "#ffffff"