execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~1 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~1 ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~ ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~-1 ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~-1 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~-1 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~0 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}
execute as @e[tag=ruined_portal_cursor_best] at @s run summon minecraft:armor_stand ~1 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ruined_portal_cursor"]}

kill @e[tag=ruined_portal_cursor_best]

execute as @e[tag=ruined_portal_cursor] at @s store result score @s ruined_portal run locate Ruined_Portal

scoreboard players operation closest ruined_portal > @e[tag=ruined_portal_cursor] ruined_portal
scoreboard players operation closest ruined_portal < @e[tag=ruined_portal_cursor] ruined_portal
scoreboard players operation @e[tag=ruined_portal_cursor] ruined_portal -= closest ruined_portal
tag @e[tag=ruined_portal_cursor, scores={ruined_portal=0}, limit=1] add ruined_portal_cursor_best
tag @e[tag=ruined_portal_cursor_best] remove ruined_portal_cursor
