
function netherspawn:enumerate_spawning_locations
teleport @s @e[tag=valid_spawn_location, sort=random, limit=1]
kill @e[tag=valid_spawn_location]
