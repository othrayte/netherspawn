# use @e[type=player] to find respawned players
#execute as @e[type=player,scores={netherspawndead=1..}] run function netherspawn:respawn_if_required
execute as @p[scores={netherspawndead=1..}] run tag @s add netherspawn_dead
execute as @p[scores={netherspawndead=1..}] run function netherspawn:player_died
execute as @p[scores={netherspawndead=1..}] run scoreboard players reset @s netherspawndead
execute as @e[type=player,tag=netherspawn_dead] run function netherspawn:player_respawned
execute as @e[type=player,tag=netherspawn_dead] run tag @s remove netherspawn_dead
