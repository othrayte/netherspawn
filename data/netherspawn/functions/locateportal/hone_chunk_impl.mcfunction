execute store result entity @s Pos[0] double 1 run scoreboard players get x ns_honechunk
execute store result entity @s Pos[2] double 1 run scoreboard players get z ns_honechunk

execute as @s at @s positioned ~-16 ~ ~-16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~ ~ ~-16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~16 ~ ~-16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~-16 ~ ~ run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~ ~ ~ run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~16 ~ ~ run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~-16 ~ ~16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk -16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~ ~ ~16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 0
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

execute as @s at @s positioned ~16 ~ ~16 run function netherspawn:util/distance_to
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set xOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players set zOut ns_honechunk 16
execute if score d ns_distanceto < d ns_honechunk run scoreboard players operation d ns_honechunk = d ns_distanceto

kill @s

scoreboard players operation x ns_honechunk += xOut ns_honechunk
scoreboard players operation z ns_honechunk += zOut ns_honechunk