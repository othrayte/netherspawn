execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text": ": Searching for valid spawning locations"}]

function netherspawn:spawn/enumerate_spawnable_locations
teleport @s @e[tag=valid_spawn_location, sort=random, limit=1]

execute if entity @e[tag=valid_spawn_location] run scoreboard players set spawnstate netherspawn 3
execute unless entity @e[tag=valid_spawn_location] run scoreboard players set spawnstate netherspawn 99
execute if score debug netherspawn matches 1 unless entity @e[tag=valid_spawn_location] run tellraw @a [{"text": "[NetherSpawn] "},{"text": "ERROR", "color":"red"},{"text": ": No valid spawning locations found at ruined portal"}]
kill @e[tag=valid_spawn_location]
