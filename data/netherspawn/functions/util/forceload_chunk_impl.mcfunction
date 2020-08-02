execute store result entity @s Pos[0] double 1 run scoreboard players get x forceload_chunk
execute store result entity @s Pos[2] double 1 run scoreboard players get z forceload_chunk
execute at @s run forceload add ~ ~ ~ ~
kill @s