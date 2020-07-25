execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text": ": Searching for a ruined portal in the nether near [0, 0]"}]

# Load the chunks we will need to spawn entities in
forceload add 0 0 0 0
forceload add 0 64 0 64
forceload add 0 -64 0 -64

# Locate nearest ruined portal to 0,0 in the nether
scoreboard objectives add epl dummy
scoreboard players set n epl 10
scoreboard players set a epl 64
execute positioned 0 0 0 run function netherspawn:estimate_portal_location

scoreboard objectives add hone_chunk dummy
scoreboard players set n hone_chunk 10
scoreboard players operation x hone_chunk = x epl
scoreboard players operation z hone_chunk = z epl
function netherspawn:hone_chunk

scoreboard players operation chunkx netherspawn = x hone_chunk
scoreboard players operation chunkz netherspawn = z hone_chunk
execute if score d hone_chunk matches 0 run scoreboard players set spawnstate netherspawn 1
execute if score debug netherspawn matches 1 if score d hone_chunk matches 0 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Located chunk containing portal at: ["}, {"score":{"name":"chunkx","objective":"netherspawn"}}, {"text": ", "}, {"score":{"name":"chunkz","objective":"netherspawn"}}, {"text": "]"}]
execute unless score d hone_chunk matches 0 run scoreboard players set spawnstate netherspawn 99
execute unless score d hone_chunk matches 0 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "ERROR", "color":"red"},{"text": ": Failed to locate ruined portal near 0,0 to spawn at"}]
