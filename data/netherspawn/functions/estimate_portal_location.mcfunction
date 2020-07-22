
# 1 faces 2
# 2 64 blocks (4 chunks) away from 1
# call 1-2 'a'
# call portal 3
# call 1-3 'b'
# call 2-3 'c'
# angle 'C' is opposite 'c', angle to portal from 2
#           a²+b²-c²
# C = acos(----------)
#             2ab

# note that the value passed to acos is scaled up by 1000 because we lack floats
# in reality we multiply the numerator by 500 and skip the 2 in the denominator

scoreboard objectives add epl dummy
scoreboard players set fiveh epl 500
# Get 'a', 'b', and 'c'
scoreboard objectives add trilaterate dummy
scoreboard players operation a trilaterate = a epl
scoreboard players set theta trilaterate 0
kill @e[tag=epl_cursor]

# Locate based on +64
kill @e[tag=epl_probe_1]
kill @e[tag=epl_probe_2]
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["epl_probe_1"]}
execute at @s run summon minecraft:armor_stand ~ ~ ~64 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["epl_probe_2"]}
execute as @e[tag=epl_probe_1] at @s store result score b trilaterate run locate ruined_portal
execute as @e[tag=epl_probe_2] at @s store result score c trilaterate run locate ruined_portal

function netherspawn:trilaterate

tag @e[tag=trilaterate_a] add epl_cursor
tag @e[tag=trilaterate_a] remove trilaterate_a
tag @e[tag=trilaterate_b] add epl_cursor
tag @e[tag=trilaterate_b] remove trilaterate_b

# Locate based on -64
kill @e[tag=epl_probe_1]
kill @e[tag=epl_probe_2]
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["epl_probe_1"]}
execute at @s run summon minecraft:armor_stand ~ ~ ~-64 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["epl_probe_2"]}
execute as @e[tag=epl_probe_1] at @s store result score b trilaterate run locate ruined_portal
execute as @e[tag=epl_probe_2] at @s store result score c trilaterate run locate ruined_portal

scoreboard players set theta trilaterate -180
function netherspawn:trilaterate

tag @e[tag=trilaterate_a] add epl_cursor
tag @e[tag=trilaterate_a] remove trilaterate_a
tag @e[tag=trilaterate_b] add epl_cursor
tag @e[tag=trilaterate_b] remove trilaterate_b

execute as @e[tag=epl_cursor] run data modify entity @s Invisible set value 0
