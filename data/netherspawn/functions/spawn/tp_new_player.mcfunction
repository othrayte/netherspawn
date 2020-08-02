execute in minecraft:the_nether run function netherspawn:spawn/enumerate_spawnable_locations
execute in minecraft:the_nether run teleport @s @e[tag=valid_spawn_location, sort=random, limit=1]
execute if entity @e[tag=valid_spawn_location] as @s at @s run spawnpoint
execute if entity @e[tag=valid_spawn_location] as @s at @s run function netherspawn:spawn/play_spawn_effects
execute if entity @e[tag=valid_spawn_location] run scoreboard players set @s netherspawned 1
execute unless entity @e[tag=valid_spawn_location] run scoreboard players set spawnstate netherspawn 2
execute in minecraft:the_nether run kill @e[tag=valid_spawn_location]
