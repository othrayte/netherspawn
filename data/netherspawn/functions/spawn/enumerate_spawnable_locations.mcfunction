kill @e[tag=locate_spawning_location_cursor]
forceload add 0 0 0 0
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locate_spawning_location_cursor"]}
execute as @e[tag=locate_spawning_location_cursor,limit=1] at @s run function netherspawn:spawn/enumerate_spawnable_locations_impl

