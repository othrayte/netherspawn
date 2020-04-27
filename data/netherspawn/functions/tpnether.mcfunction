say Spawning @s at @e[tag=nether_spawnpoint,sort=random,limit=1].Pos
execute in minecraft:the_nether run teleport @s ~ ~ ~
execute in minecraft:the_nether run teleport @s @e[tag=nether_spawnpoint,sort=random,limit=1]
execute if entity @e[tag=nether_spawnpoint,sort=random,limit=1] run tag @s add netherSpawned