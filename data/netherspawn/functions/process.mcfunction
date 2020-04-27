say Spawning players in the nether
execute unless entity @a[nbt={Dimension:-1}] in minecraft:the_nether run teleport @a[tag=!netherSpawned] ~ 130 ~
execute in minecraft:the_nether unless entity @e[tag=portal_cursor] run function netherspawn:locateportal
execute in minecraft:the_nether if entity @e[tag=portal_cursor] unless entity @e[tag=nether_spawnpoint] run function netherspawn:choose_spawn
execute if entity @e[tag=nether_spawnpoint] as @a[tag=!netherSpawned] run function netherspawn:tpnether