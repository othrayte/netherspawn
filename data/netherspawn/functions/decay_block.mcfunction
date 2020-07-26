# Blocks that get broken
execute if block ~ ~ ~ minecraft:crying_obsidian run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:gold_block run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air destroy

#execute if block ~ ~ ~ minecraft:blackstone run setblock ~ ~ ~ minecraft:air destroy
#execute if block ~ ~ ~ minecraft:blackstone_slab run setblock ~ ~ ~ minecraft:air destroy
#execute if block ~ ~ ~ minecraft:blackstone_stairs run setblock ~ ~ ~ minecraft:air destroy
#execute if block ~ ~ ~ minecraft:blackstone_wall run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:cracked_polished_blackstone_bricks run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:polished_blackstone_brick_stairs run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:polished_blackstone_brick_slab run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:polished_blackstone_brick_wall run setblock ~ ~ ~ minecraft:air destroy

#execute if block ~ ~ ~ minecraft:basalt run setblock ~ ~ ~ minecraft:air destroy

# Blocks that get replaced
execute if block ~ ~ ~ minecraft:obsidian run setblock ~ ~ ~ minecraft:crying_obsidian replace

execute if block ~ ~ ~ minecraft:polished_blackstone run setblock ~ ~ ~ minecraft:blackstone replace

execute if block ~ ~ ~ minecraft:polished_blackstone_bricks run setblock ~ ~ ~ minecraft:cracked_polished_blackstone_bricks replace

execute if block ~ ~ ~ minecraft:polished_blackstone_slab[type=top] run setblock ~ ~ ~ minecraft:blackstone_slab[type=top] replace
execute if block ~ ~ ~ minecraft:polished_blackstone_slab[type=bottom] run setblock ~ ~ ~ minecraft:blackstone_slab[type=bottom] replace
execute if block ~ ~ ~ minecraft:polished_blackstone_slab[type=double] run setblock ~ ~ ~ minecraft:polished_blackstone_slab[type=bottom] replace

execute if block ~ ~ ~ minecraft:polished_blackstone_stairs[facing=north] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=north] replace
execute if block ~ ~ ~ minecraft:polished_blackstone_stairs[facing=south] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=south] replace
execute if block ~ ~ ~ minecraft:polished_blackstone_stairs[facing=east] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=east] replace
execute if block ~ ~ ~ minecraft:polished_blackstone_stairs[facing=west] run setblock ~ ~ ~ minecraft:blackstone_stairs[facing=west] replace
# TODO handle other states of stairs
execute if block ~ ~ ~ minecraft:polished_blackstone_stairs run setblock ~ ~ ~ minecraft:blackstone_stairs replace

execute if block ~ ~ ~ minecraft:polished_blackstone_wall run setblock ~ ~ ~ minecraft:blackstone_wall replace

execute if block ~ ~ ~ minecraft:chiseled_polished_blackstone run setblock ~ ~ ~ minecraft:polished_blackstone replace

execute if block ~ ~ ~ minecraft:polished_basalt run setblock ~ ~ ~ minecraft:basalt replace
