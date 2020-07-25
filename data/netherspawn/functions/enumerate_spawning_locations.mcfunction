execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text": ": Searching for valid spawning locations"}]

kill @e[tag=locate_spawning_location_cursor]
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locate_spawning_location_cursor"]}
execute as @e[tag=locate_spawning_location_cursor,limit=1] at @s run function netherspawn:enumerate_spawning_locations_impl

