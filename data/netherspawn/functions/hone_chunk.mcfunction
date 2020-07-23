# arguments: 
#  * x: input x coord
#  * z: input z coord
#  * n: locate type (see distance_to)
#  * a moveable entity

scoreboard objectives add hone_chunk dummy

# snap to nearest (lower) chunk corner
scoreboard players set halfchunk hone_chunk 8
scoreboard players set chunk hone_chunk 16
scoreboard players set d hone_chunk 999
scoreboard players operation x hone_chunk += halfchunk hone_chunk
scoreboard players operation z hone_chunk += halfchunk hone_chunk
scoreboard players operation x' hone_chunk = x hone_chunk
scoreboard players operation z' hone_chunk = z hone_chunk
scoreboard players operation x' hone_chunk %= chunk hone_chunk
scoreboard players operation z' hone_chunk %= chunk hone_chunk
scoreboard players operation x hone_chunk -= x' hone_chunk
scoreboard players operation z hone_chunk -= z' hone_chunk

# Test 3x3 chunks
kill @e[tag=cursor]
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor"]}
execute as @e[tag=cursor] run function netherspawn:hone_chunk_impl
