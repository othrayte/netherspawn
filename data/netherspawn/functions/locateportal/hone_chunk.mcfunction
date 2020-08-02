# arguments: 
#  * x: input x coord
#  * z: input z coord
#  * n: locate type (see distance_to)
#  * a moveable entity

scoreboard objectives add ns_honechunk dummy

# snap to nearest (lower) chunk corner
scoreboard players set halfchunk ns_honechunk 8
scoreboard players set chunk ns_honechunk 16
scoreboard players set d ns_honechunk 999
scoreboard players operation x ns_honechunk += halfchunk ns_honechunk
scoreboard players operation z ns_honechunk += halfchunk ns_honechunk
scoreboard players operation x' ns_honechunk = x ns_honechunk
scoreboard players operation z' ns_honechunk = z ns_honechunk
scoreboard players operation x' ns_honechunk %= chunk ns_honechunk
scoreboard players operation z' ns_honechunk %= chunk ns_honechunk
scoreboard players operation x ns_honechunk -= x' ns_honechunk
scoreboard players operation z ns_honechunk -= z' ns_honechunk

# Test 3x3 chunks
scoreboard objectives add ns_distanceto dummy
scoreboard players operation n ns_distanceto = n ns_honechunk
kill @e[tag=cursor]
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor"]}
execute as @e[tag=cursor] run function netherspawn:locateportal/hone_chunk_impl
