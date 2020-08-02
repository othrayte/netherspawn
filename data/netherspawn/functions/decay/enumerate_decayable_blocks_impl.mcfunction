execute store result entity @s Pos[0] double 1 run scoreboard players get chunkx netherspawn
execute store result entity @s Pos[1] double 1 run scoreboard players get chest_y netherspawn
execute store result entity @s Pos[2] double 1 run scoreboard players get chunkz netherspawn

execute as @s at @s run teleport ~0.5 ~ ~0.5

# Forceload the spawn chunk
scoreboard objectives add forceload_chunk dummy
scoreboard players operation x forceload_chunk = chunkx netherspawn
scoreboard players operation z forceload_chunk = chunkz netherspawn
function netherspawn:util/forceload_chunk

kill @e[tag=portal_decay_block]

execute at @s positioned ~ ~-4 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~-3 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~-2 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~-1 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~ ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~1 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~2 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~3 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~4 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~5 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~6 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~7 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~8 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~9 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~10 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~11 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~12 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~13 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~14 ~ run function netherspawn:decay/test_decayable_block_y
execute at @s positioned ~ ~15 ~ run function netherspawn:decay/test_decayable_block_y

kill @s
