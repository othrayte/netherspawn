execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text": ": Searching for a ruined portal in the nether near [0, 0]"}]

forceload add 0 0 0 0

kill @e[tag=spawn_origin_cursor]
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spawn_origin_cursor"]}
execute as @e[tag=spawn_origin_cursor,limit=1] at @s run function netherspawn:choose_spawn_chunk_impl
