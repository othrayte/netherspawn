
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
scoreboard players set a epl 64
kill @e[tag=portal_cursor_1]
kill @e[tag=portal_cursor_2]
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor_1"]}
execute at @s run summon minecraft:armor_stand ~ ~ ~64 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor_2"]}
execute as @e[tag=portal_cursor_1] at @s store result score b epl run locate ruined_portal
execute as @e[tag=portal_cursor_2] at @s store result score c epl run locate ruined_portal

# Calc squares
scoreboard players operation a2 epl = a epl
scoreboard players operation a2 epl *= a epl
scoreboard players operation b2 epl = b epl
scoreboard players operation b2 epl *= b epl
scoreboard players operation c2 epl = c epl
scoreboard players operation c2 epl *= c epl

# Calc numerator
scoreboard players operation num epl = a2 epl
scoreboard players operation num epl += b2 epl
scoreboard players operation num epl -= c2 epl
scoreboard players operation num epl *= fiveh epl

# Calc denominator
scoreboard players operation den epl = a epl
scoreboard players operation den epl *= b epl

# Calc cos(C)
scoreboard players operation cosC epl = num epl
scoreboard players operation cosC epl /= den epl

# Calc C
scoreboard objectives add acos dummy
scoreboard players operation x acos = cosC epl
function netherspawn:acos
scoreboard players operation C epl = result acos
scoreboard players operation C' epl = C epl
scoreboard players operation C' epl -= C epl
scoreboard players operation C' epl -= C epl

# Spawn a cursor facing the portal, (need to check both directions!)
kill @e[tag=portal_cursor_1]
kill @e[tag=portal_cursor_2]
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor_1"]}
execute store result entity @e[tag=portal_cursor_1,limit=1] Rotation[0] float 0.001 run scoreboard players get C epl
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor_2"]}
execute store result entity @e[tag=portal_cursor_2,limit=1] Rotation[0] float 0.001 run scoreboard players get C' epl
# and move forward 'b'
scoreboard objectives add forward_n dummy
scoreboard players operation n forward_n = b epl
execute as @e[tag=portal_cursor_1] run function netherspawn:forward_n
execute as @e[tag=portal_cursor_2] run function netherspawn:forward_n

# Show some stands for debugging
kill @e[tag=portal_debug_cursor_1]
kill @e[tag=portal_debug_cursor_2]
execute at @e[tag=portal_cursor_1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,Tags:["portal_debug_cursor_1"]}
execute at @e[tag=portal_cursor_2] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:0b,Tags:["portal_debug_cursor_2"]}

# Check result
scoreboard objectives add epl_debug dummy
execute store result score x1 epl_debug run data get entity @e[tag=portal_debug_cursor_1,limit=1] Pos[0]
execute store result score z1 epl_debug run data get entity @e[tag=portal_debug_cursor_1,limit=1] Pos[2]
execute store result score x2 epl_debug run data get entity @e[tag=portal_debug_cursor_2,limit=1] Pos[0]
execute store result score z2 epl_debug run data get entity @e[tag=portal_debug_cursor_2,limit=1] Pos[2]
execute store result score d epl_debug run locate ruined_portal
execute as @e[tag=portal_debug_cursor_1] at @s store result score d1 epl_debug run locate ruined_portal
execute as @e[tag=portal_debug_cursor_2] at @s store result score d2 epl_debug run locate ruined_portal
