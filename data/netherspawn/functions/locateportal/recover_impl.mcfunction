execute store result entity @s Rotation[0] float 0.001 run scoreboard players get search_angle netherspawn

scoreboard objectives add ns_forwardn dummy
scoreboard players operation n ns_forwardn = search_radius netherspawn

execute as @s at @s run function netherspawn:util/coord_at_distance
scoreboard players operation origin_x netherspawn = x ns_coorddistance
scoreboard players operation origin_z netherspawn = z ns_coorddistance

kill @s

scoreboard players set spawnstate netherspawn 0
