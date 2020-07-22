# input forward_n:n
# output coord_distance:d, distance to target
# output coord_distance:x, x coord
# output coord_distance:z, y coord
scoreboard objectives add coord_distance dummy

function netherspawn:forward_n
execute at @s run function netherspawn:distance_to
scoreboard players operation d coord_distance = d distance_to
execute store result score x coord_distance run data get entity @s Pos[0] 1
execute store result score z coord_distance run data get entity @s Pos[2] 1
kill @s
