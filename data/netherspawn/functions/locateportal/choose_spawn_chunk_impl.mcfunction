execute store result entity @s Pos[0] double 1 run scoreboard players get origin_x netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get origin_z netherspawn

# Load the chunks we will need to spawn entities in
execute as @s at @s run forceload add ~ ~ ~ ~
execute as @s at @s run forceload add ~ ~64 ~ ~64
execute as @s at @s run forceload add ~ ~-64 ~ ~-64

# Locate nearest ruined portal to 0,0 in the nether
scoreboard objectives add ns_estportalloc dummy
scoreboard players set n ns_estportalloc 10
scoreboard players set a ns_estportalloc 64
execute as @s at @s run function netherspawn:locateportal/estimate_portal_location

scoreboard objectives add ns_honechunk dummy
scoreboard players set n ns_honechunk 10
scoreboard players operation x ns_honechunk = x ns_estportalloc
scoreboard players operation z ns_honechunk = z ns_estportalloc
function netherspawn:locateportal/hone_chunk

scoreboard players operation chunkx netherspawn = x ns_honechunk
scoreboard players operation chunkz netherspawn = z ns_honechunk
execute if score d ns_honechunk matches 0 run scoreboard players set spawnstate netherspawn 1
execute if score debug netherspawn matches 1 if score d ns_honechunk matches 0 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Located chunk containing portal at: ["}, {"score":{"name":"chunkx","objective":"netherspawn"}}, {"text": ", "}, {"score":{"name":"chunkz","objective":"netherspawn"}}, {"text": "]"}]
execute unless score d ns_honechunk matches 0 run scoreboard players set spawnstate netherspawn 99
execute if score debug netherspawn matches 1 unless score d ns_honechunk matches 0 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "ERROR", "color":"red"},{"text": ": Failed to locate ruined portal near 0,0 to spawn at"}]
