scoreboard objectives add ns_forceldchunk dummy
# inputs:
#  * x, chunk x (in blocks)
#  * z, chunk y (in blocks)
# NOTE: assumes that the calling location is already loaded

kill @e[tag=forceload_cursor]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["forceload_cursor"]}
execute as @e[tag=forceload_cursor] run function netherspawn:util/forceload_chunk_impl