execute store result entity @s Rotation[0] float 0.001 run scoreboard players get search_angle netherspawn

scoreboard objectives add forward_n dummy
scoreboard players operation n forward_n = search_radius netherspawn

execute as @s at @s run function netherspawn:util/coord_at_distance
scoreboard players operation origin_x netherspawn = x coord_distance
scoreboard players operation origin_z netherspawn = z coord_distance

kill @s

scoreboard players set spawnstate netherspawn 0
