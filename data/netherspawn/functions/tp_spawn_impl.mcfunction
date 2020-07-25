execute store result entity @s Pos[0] double 1 run scoreboard players get chunkx netherspawn
execute store result entity @s Pos[1] double 1 run scoreboard players get chest_y netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get chunkz netherspawn

teleport @e[tag=netherspawn_tp_victim] @s
execute as @e[tag=netherspawn_tp_victim] at @s run teleport ~0.5 ~ ~0.5

kill @s