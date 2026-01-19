schedule function wawo:portal_horn/send/init 10t

execute as @a[scores={wawo.portal_horn.teleport.send=1..}] run function wawo:portal_horn/send/exec
execute as @a[scores={wawo.portal_horn.teleport.send=1..}] run scoreboard players set @s wawo.portal_horn.teleport.send 0