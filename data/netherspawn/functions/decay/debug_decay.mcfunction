function netherspawn:decay/enumerate_decayable_blocks
teleport @e[tag=decay_cursor] ~ -999 ~
kill @e[tag=decay_cursor]
#tag @e[tag=portal_decay_block,sort=random,limit=2] add block_to_decay
tag @e[tag=portal_decay_block] add block_to_decay
execute as @e[tag=block_to_decay] at @s run summon minecraft:magma_cube ~ ~ ~ {NoGravity:1b,Invulnerable:1b,NoAI:1b,Size:1,Tags:["decay_cursor"],Glowing:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}
#execute as @e[tag=block_to_decay] at @s run function netherspawn:decay/decay_block