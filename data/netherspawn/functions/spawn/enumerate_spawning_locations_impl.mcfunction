execute store result entity @s Pos[0] double 1 run scoreboard players get chunkx netherspawn
execute store result entity @s Pos[1] double 1 run scoreboard players get chest_y netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get chunkz netherspawn

execute as @s at @s run teleport ~0.5 ~ ~0.5

# Forceload the spawn chunk
scoreboard objectives add forceload_chunk dummy
scoreboard players operation x forceload_chunk = chunkx netherspawn
scoreboard players operation z forceload_chunk = chunkz netherspawn
function netherspawn:util/forceload_chunk

kill @e[tag=valid_spawn_location]

execute at @s positioned ~ ~-4 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~-3 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~-2 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~-1 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~ ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~1 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~2 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~3 ~ run function netherspawn:spawn/test_spawn_locations_y
execute at @s positioned ~ ~4 ~ run function netherspawn:spawn/test_spawn_locations_y

kill @s
