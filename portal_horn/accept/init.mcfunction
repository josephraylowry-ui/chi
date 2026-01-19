schedule function wawo:portal_horn/accept/init 10t

execute as @a[scores={wawo.portal_horn.teleport.accept=1..}] at @s run function wawo:portal_horn/accept/exec
execute as @a[scores={wawo.portal_horn.teleport.accept=1..}] run scoreboard players set @s wawo.portal_horn.teleport.accept 0