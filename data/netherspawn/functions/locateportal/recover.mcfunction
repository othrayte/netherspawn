scoreboard players set ten netherspawn 10
scoreboard players set angledelta netherspawn 229183
scoreboard players set three60 netherspawn 360000

scoreboard players operation search_radius netherspawn += ten netherspawn
scoreboard players operation search_angle netherspawn += angledelta netherspawn
scoreboard players operation search_angle netherspawn %= three60 netherspawn

scoreboard players reset ten netherspawn
scoreboard players reset angledelta netherspawn
scoreboard players reset three60 netherspawn

scoreboard players set sixty netherspawn 60
scoreboard players add spawnattempts netherspawn 1
scoreboard players operation attemptsmod netherspawn = spawnattempts netherspawn
scoreboard players operation attemptsmod netherspawn %= sixty netherspawn

execute if score attemptsmod netherspawn matches 0 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "INFO", "color":"#FFD700"},{"text": ": Still locating a spawn location in the nether. Please stand by."}]

scoreboard players reset attemptsmod netherspawn
scoreboard players reset twenty netherspawn

forceload add 0 0 0 0

kill @e[tag=cursor]
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor"]}
execute as @e[tag=cursor] run function netherspawn:locateportal/recover_impl
