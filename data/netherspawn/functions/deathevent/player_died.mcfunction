execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Player died: "}, {"selector":"@s"}]
# If the players has a forced spawn point, we probably set it so update it
execute if entity @s[nbt={SpawnForced:1b}] run function netherspawn:spawn/set_player_spawn
# Check if has spawn. If the player has no bed, anchor or forced spawn then they won't have the SpawnForced flag either.
# If they don't have a spawn then give them one
execute unless data entity @s SpawnForced run function netherspawn:spawn/set_player_spawn