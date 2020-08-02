# input forward_n:n
# output coord_distance:d, distance to target
# output coord_distance:x, x coord
# output coord_distance:z, y coord
scoreboard objectives add ns_coorddistance dummy

function netherspawn:util/forward_n

execute at @s run function netherspawn:util/distance_to
scoreboard players operation d ns_coorddistance = d ns_distanceto
execute store result score x ns_coorddistance run data get entity @s Pos[0] 1
execute store result score z ns_coorddistance run data get entity @s Pos[2] 1
kill @s
