execute store result entity @s Pos[0] double 1 run scoreboard players get x hone_chunk
execute store result entity @s Pos[2] double 1 run scoreboard players get z hone_chunk

execute as @s at @s positioned ~-16 ~ ~-16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~ ~ ~-16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~16 ~ ~-16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~-16 ~ ~ run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~ ~ ~ run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~16 ~ ~ run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~-16 ~ ~16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk -16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~ ~ ~16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 0
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

execute as @s at @s positioned ~16 ~ ~16 run function netherspawn:util/distance_to
execute if score d distance_to < d hone_chunk run scoreboard players set xOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players set zOut hone_chunk 16
execute if score d distance_to < d hone_chunk run scoreboard players operation d hone_chunk = d distance_to

kill @s

scoreboard players operation x hone_chunk += xOut hone_chunk
scoreboard players operation z hone_chunk += zOut hone_chunk