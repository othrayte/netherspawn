# Detect players that just died
execute as @p[scores={netherspawndead=1..}] run tag @s add netherspawn_dead
execute as @p[scores={netherspawndead=1..}] run function netherspawn:deathevent/player_died
execute as @p[scores={netherspawndead=1..}] run scoreboard players reset @s netherspawndead

# Detect players that just respawned
execute as @e[type=player,tag=netherspawn_dead] run function netherspawn:deathevent/player_respawned
execute as @e[type=player,tag=netherspawn_dead] run tag @s remove netherspawn_dead
