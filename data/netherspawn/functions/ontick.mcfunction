scoreboard objectives add netherspawn dummy
# spawnstate:
#  0: Initial
#  1: Spawn chunk located
#  2: Spawn chunk Y located 
#  3: Test for valid spawning locations
# 99: Error
execute unless score spawnstate netherspawn matches 1.. in minecraft:the_nether run function netherspawn:choose_spawn_chunk
execute if score spawnstate netherspawn matches 1 in minecraft:the_nether run function netherspawn:locate_chest_y
execute if score spawnstate netherspawn matches 2 in minecraft:the_nether run function netherspawn:check_valid_spawns
