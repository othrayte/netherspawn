execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~1 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~1 ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~ ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~-1 ~ ~1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~-1 ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~-1 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~0 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}
execute as @e[tag=portal_cursor] at @s run summon minecraft:armor_stand ~1 ~ ~-1 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_candiate"]}

kill @e[tag=portal_cursor]

execute as @e[tag=cursor_candiate] at @s store result score @s portal_distance run locate Ruined_Portal

scoreboard players operation closest portal_distance > @e[tag=cursor_candiate] portal_distance
scoreboard players operation closest portal_distance < @e[tag=cursor_candiate] portal_distance
scoreboard players operation @e[tag=cursor_candiate] portal_distance -= closest portal_distance
tag @e[tag=cursor_candiate, scores={portal_distance=0}, limit=1] add portal_cursor
tag @e[tag=portal_cursor] remove cursor_candiate
