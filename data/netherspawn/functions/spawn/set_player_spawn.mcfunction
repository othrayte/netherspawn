execute in minecraft:the_nether run function netherspawn:spawn/enumerate_spawning_locations
execute in minecraft:the_nether at @e[tag=valid_spawn_location, sort=random, limit=1] run spawnpoint
execute if entity @e[tag=valid_spawn_location] run scoreboard players reset @s netherspawndead
execute unless entity @e[tag=valid_spawn_location] run scoreboard players set spawnstate netherspawn 2
execute in minecraft:the_nether run kill @e[tag=valid_spawn_location]
