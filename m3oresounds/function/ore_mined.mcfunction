
# Checks if any player has mined a specified ore and if so, plays a sound
$execute at @a[scores={m3oresounds.$(ore)=1..}] run playsound $(sound) block @a[distance=..30] ^ ^ ^2 $(volume) $(pitch)

# Resets the ore trigger scoreboard (otherwise it would play the ore sound infinitely)
$scoreboard players set @a[scores={m3oresounds.$(ore)=1..}] m3oresounds.$(ore) $(persist)