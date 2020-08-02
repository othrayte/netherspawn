execute store result entity @s Pos[0] double 1 run scoreboard players get x ns_forceldchunk
execute store result entity @s Pos[2] double 1 run scoreboard players get z ns_forceldchunk
execute at @s run forceload add ~ ~ ~ ~
kill @s