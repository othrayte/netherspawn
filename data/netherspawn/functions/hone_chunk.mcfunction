# arguments: 
#  * x: input x coord
#  * z: input z coord
#  * n: locate type (see distance_to)

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
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor"]}
execute store result entity @e[tag=cursor,limit=1] Pos[0] double 1 run scoreboard players get x hone_chunk
execute store result entity @e[tag=cursor,limit=1] Pos[2] double 1 run scoreboard players get z hone_chunk

execute as @e[tag=cursor,limit=1] at @s positioned ~-16 ~ ~-16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~ ~ ~-16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~16 ~ ~-16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~-16 ~ ~ run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~ ~ ~ run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~16 ~ ~ run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~-16 ~ ~16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~ ~ ~16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @e[tag=cursor,limit=1] at @s positioned ~16 ~ ~16 run function netherspawn:distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

scoreboard players operation x hone_chunk += xOut hone_chunk
scoreboard players operation z hone_chunk += zOut hone_chunk
