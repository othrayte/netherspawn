scoreboard objectives add locate_chest_y dummy

scoreboard players reset subchunk_y locate_chest_y

execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~ ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 0
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~1 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 1
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~2 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 2
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~3 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 3
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~4 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 4
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~5 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 5
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~6 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 6
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~7 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 7
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~8 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 8
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~9 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 9
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~10 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 10
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~11 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 11
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~12 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 12
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~13 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 13
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~14 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 14
execute unless score subchunk_y locate_chest_y matches 0..15 positioned ~ ~15 ~ run function netherspawn:locate_chest_y_layer_z
execute unless score subchunk_y locate_chest_y matches 0..15 if score chest_located locate_chest_y matches 1 run scoreboard players set subchunk_y locate_chest_y 15

execute if score subchunk_y locate_chest_y matches 0..15 run scoreboard players operation subchunk_y_last locate_chest_y = subchunk_y locate_chest_y