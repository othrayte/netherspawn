execute as @e[tag=nether_spawnpoint_tester] at @s if block ~ ~-1 ~ minecraft:obsidian run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["nether_spawnpoint"]}
execute as @e[tag=nether_spawnpoint_tester] at @s run teleport ~1 ~ ~