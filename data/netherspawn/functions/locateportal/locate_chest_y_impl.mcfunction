execute store result entity @s Pos[0] double 1 run scoreboard players get chunkx netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get chunkz netherspawn

# Forceload the spawn chunk
scoreboard objectives add ns_forceldchunk dummy
scoreboard players operation x ns_forceldchunk = chunkx netherspawn
scoreboard players operation z ns_forceldchunk = chunkz netherspawn
function netherspawn:forceload_chunk

scoreboard objectives add ns_locatechesty dummy
scoreboard players reset chunk_y ns_locatechesty

execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 0 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 0
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 16 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 16
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 32 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 32
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 48 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 48
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 64 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 64
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 80 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 80
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 96 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 96
execute unless score chunk_y ns_locatechesty matches 0..127 at @s positioned ~ 112 ~ run function netherspawn:locateportal/locate_chest_y_subchunk
execute unless score chunk_y ns_locatechesty matches 0..127 if score subchunk_y ns_locatechesty matches 0..15 run scoreboard players set chunk_y ns_locatechesty 112

kill @s

scoreboard players operation y ns_locatechesty = chunk_y ns_locatechesty
scoreboard players operation y ns_locatechesty += subchunk_y_last ns_locatechesty

execute if score chunk_y ns_locatechesty matches 0..127 run scoreboard players operation chest_y netherspawn = y ns_locatechesty
execute if score chunk_y ns_locatechesty matches 0..127 run scoreboard players set spawnstate netherspawn 2
execute if score debug netherspawn matches 1 if score chunk_y ns_locatechesty matches 0..127 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Located chest at y="}, {"score":{"name":"chest_y","objective":"netherspawn"}}]
execute unless score chunk_y ns_locatechesty matches 0..127 run scoreboard players set spawnstate netherspawn 99
execute unless score chunk_y ns_locatechesty matches 0..127 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "ERROR", "color":"red"},{"text": ": Failed to locate ruined portal chest in chunk containing ruined portal"}]

