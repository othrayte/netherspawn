# Teleport to the spawn portal if a valid spawn location exists
execute in minecraft:the_nether run function netherspawn:spawn/enumerate_spawnable_locations
execute in minecraft:the_nether run teleport @s @e[tag=valid_spawn_location, sort=random, limit=1]
execute in minecraft:the_nether run kill @e[tag=valid_spawn_location]
