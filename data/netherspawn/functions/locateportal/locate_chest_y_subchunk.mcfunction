scoreboard objectives add ns_locatechesty dummy

scoreboard players reset subchunk_y ns_locatechesty

execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~ ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 0
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~1 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 1
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~2 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 2
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~3 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 3
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~4 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 4
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~5 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 5
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~6 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 6
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~7 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 7
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~8 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 8
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~9 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 9
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~10 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 10
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~11 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 11
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~12 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 12
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~13 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 13
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~14 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 14
execute unless score subchunk_y ns_locatechesty matches 0..15 positioned ~ ~15 ~ run function netherspawn:locateportal/locate_chest_y_layer_z
execute unless score subchunk_y ns_locatechesty matches 0..15 if score chest_located ns_locatechesty matches 1 run scoreboard players set subchunk_y ns_locatechesty 15

execute if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players operation subchunk_y_last ns_locatechesty = subchunk_y ns_locatechesty