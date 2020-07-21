scoreboard objectives add locate_portal dummy

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor", "lp_center"]}

summon minecraft:armor_stand ~30 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor", "lp_probe"]}
summon minecraft:armor_stand ~-30 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor", "lp_probe"]}
summon minecraft:armor_stand ~ ~ ~30 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor", "lp_probe"]}
summon minecraft:armor_stand ~ ~ ~-30 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor", "lp_probe"]}

execute as @e[tag=lp_probe] at @s store result score @s locate_portal run locate Ruined_Portal

execute as @e[tag=lp_center] at @s store result score d locate_portal run locate Ruined_Portal

scoreboard players operation closest locate_portal > @e[tag=lp_probe] locate_portal
scoreboard players operation closest locate_portal < @e[tag=lp_probe] locate_portal
scoreboard players operation @e[tag=lp_probe] locate_portal -= closest locate_portal
tag @e[tag=lp_probe, scores={locate_portal=0}, limit=1] add lp_target

execute at @s 

scoreboard players add setupLocatePortal netherspawn 1