execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text": ": Decaying portal"}]

function netherspawn:decay/enumerate_decayable_blocks

tag @e[tag=portal_decay_block,sort=random,limit=8] add block_to_decay

execute as @e[tag=block_to_decay] at @s run function netherspawn:decay/decay_block
# maybe add some sound effects

kill @e[tag=portal_decay_block]

