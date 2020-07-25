scoreboard objectives remove acos
scoreboard objectives remove epl
scoreboard objectives remove hone_chunk
scoreboard objectives remove coord_distance
scoreboard objectives remove distance_to
scoreboard objectives remove trilaterate
scoreboard objectives remove forceload_chunk
scoreboard objectives remove forward_n
scoreboard objectives remove locatechest_y
scoreboard objectives remove debug_trilat
scoreboard objectives remove netherspawn

execute in minecraft:the_nether run forceload remove all

scoreboard objectives add netherspawn dummy
scoreboard objectives setdisplay sidebar netherspawn
scoreboard players set debug netherspawn 1
#scoreboard players set spawnstate netherspawn 99
