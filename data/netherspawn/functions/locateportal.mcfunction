scoreboard objectives add portal_distance dummy

say Searching for a ruined portal to spawn at

execute at @r[tag=!netherSpawned] run summon minecraft:armor_stand ~ 34 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor"]}

execute as @e[tag=portal_cursor] at @s store success score portalFound netherspawn run locate Ruined_Portal
execute unless score portalFound netherspawn matches 1 run say No portal nearby, is the world generated?
execute unless score portalFound netherspawn matches 1 run kill @e[tag=portal_cursor]
execute if score portalFound netherspawn matches 1 run function netherspawn:locateportal_step

execute in minecraft:the_nether if entity @e[tag=portal_cursor] run say Found ruined portal to spawn at
execute in minecraft:the_nether unless entity @e[tag=portal_cursor] run say No ruined portal found
