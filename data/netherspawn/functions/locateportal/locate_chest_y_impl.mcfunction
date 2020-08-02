execute store result entity @s Pos[0] double 1 run scoreboard players get chunkx netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get chunkz netherspawn

# Forceload the spawn chunk
scoreboard objectives add forceload_chunk dummy
scoreboard players operation x forceload_chunk = chunkx netherspawn
scoreboard players operation z forceload_chunk = chunkz netherspawn
function netherspawn:forceload_chunk

scoreboard objectives add locate_chest_y dummy
scoreboard players reset chunk_y locate_chest_y

execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 0 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 0
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 16 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 16
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 32 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 32
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 48 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 48
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 64 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 64
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 80 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 80
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 96 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 96
execute unless score chunk_y locate_chest_y matches 0..127 at @s positioned ~ 112 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y locate_chest_y matches 0..127 if score subchunk_y locate_chest_y matches 0..15 run scoreboard players set chunk_y locate_chest_y 112

kill @s

scoreboard players operation y locate_chest_y = chunk_y locate_chest_y
scoreboard players operation y locate_chest_y += subchunk_y_last locate_chest_y

execute if score chunk_y locate_chest_y matches 0..127 run scoreboard players operation chest_y netherspawn = y locate_chest_y
execute if score chunk_y locate_chest_y matches 0..127 run scoreboard players set spawnstate netherspawn 2
execute if score debug netherspawn matches 1 if score chunk_y locate_chest_y matches 0..127 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Located chest at y="}, {"score":{"name":"chest_y","objective":"netherspawn"}}]
execute unless score chunk_y locate_chest_y matches 0..127 run scoreboard players set spawnstate netherspawn 99
execute unless score chunk_y locate_chest_y matches 0..127 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "ERROR", "color":"red"},{"text": ": Failed to locate ruined portal chest in chunk containing ruined portal"}]

