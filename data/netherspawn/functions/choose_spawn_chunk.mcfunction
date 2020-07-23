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
execute if score d hone_chunk matches 0 run scoreboard players set spawnchosen netherspawn 1