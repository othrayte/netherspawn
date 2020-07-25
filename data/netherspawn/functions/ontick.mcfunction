scoreboard objectives add netherspawn dummy
# spawnstate:
#  0: Initial
#  1: Spawn chunk located
#  2: Spawn chunk Y located 
#  3: Valid spawn location found
#  4: Reset recovery states
# 99: Recovering from errors
execute if score spawnstate netherspawn matches 99 in minecraft:the_nether run function netherspawn:recover

execute unless score spawnstate netherspawn matches 1.. in minecraft:the_nether run function netherspawn:choose_spawn_chunk
execute if score spawnstate netherspawn matches 1 in minecraft:the_nether run function netherspawn:locate_chest_y
execute if score spawnstate netherspawn matches 2 in minecraft:the_nether run function netherspawn:check_valid_spawns
execute if score spawnstate netherspawn matches 3 in minecraft:the_nether run function netherspawn:mark_recovered
execute if score spawnstate netherspawn matches 4 in minecraft:the_nether run function netherspawn:tp_new_players
