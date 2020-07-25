scoreboard objectives add trilaterate dummy

# options:
#  * trilaterate:a, distance between
execute unless score a trilaterate matches 1..512 run scoreboard players set a trilaterate 64
#  * trilaterate:theta, from point 1 to point 2
execute unless score theta trilaterate matches -180000..180000 run scoreboard players set theta trilaterate 0
#  * trilaterate:n, target location category (see distance_to)
execute unless score n trilaterate matches 0..17 run scoreboard players set n trilaterate 10
# results:
#  * entity tagged 'cursor_1' at candidate location 1
#  * entity tagged 'cursor_2' at candidate location 2

scoreboard objectives add distance_to dummy
scoreboard players operation n distance_to = n trilaterate

# Create 2 cursors, at '1' and '2'
kill @e[tag=cursor_1]
kill @e[tag=cursor_2]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_1"]}
execute store result entity @e[tag=cursor_1,limit=1] Rotation[0] float 0.001 run scoreboard players get theta trilaterate
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_2"]}
execute store result entity @e[tag=cursor_2,limit=1] Rotation[0] float 0.001 run scoreboard players get theta trilaterate

scoreboard objectives add forward_n dummy
scoreboard players operation n forward_n = a trilaterate
execute as @e[tag=cursor_2] run function netherspawn:forward_n

execute as @e[tag=cursor_1] at @s run function netherspawn:distance_to
scoreboard players operation b trilaterate = d distance_to
execute as @e[tag=cursor_2] at @s run function netherspawn:distance_to
scoreboard players operation c trilaterate = d distance_to

scoreboard players operation a debug_trilat = a trilaterate
scoreboard players operation b debug_trilat = b trilaterate
scoreboard players operation c debug_trilat = c trilaterate

# Calc squares
scoreboard players operation a2 trilaterate = a trilaterate
scoreboard players operation a2 trilaterate *= a trilaterate
scoreboard players operation b2 trilaterate = b trilaterate
scoreboard players operation b2 trilaterate *= b trilaterate
scoreboard players operation c2 trilaterate = c trilaterate
scoreboard players operation c2 trilaterate *= c trilaterate

# Calc numerator
scoreboard players operation num trilaterate = a2 trilaterate
scoreboard players operation num trilaterate += b2 trilaterate
scoreboard players operation num trilaterate -= c2 trilaterate
scoreboard players set fiveh trilaterate 500
scoreboard players operation num trilaterate *= fiveh trilaterate

# Calc denominator
scoreboard players operation den trilaterate = a trilaterate
scoreboard players operation den trilaterate *= b trilaterate

# Calc cos(C)
scoreboard players operation cosC trilaterate = num trilaterate
scoreboard players operation cosC trilaterate /= den trilaterate

# Calc C
scoreboard objectives add acos dummy
scoreboard players operation x acos = cosC trilaterate
function netherspawn:acos
scoreboard players operation C trilaterate = result acos
scoreboard players operation C1 trilaterate = theta trilaterate
scoreboard players operation C2 trilaterate = theta trilaterate
scoreboard players operation C1 trilaterate += C trilaterate
scoreboard players operation C2 trilaterate -= C trilaterate

# Spawn a cursor facing the portal, (need to check both directions!)
teleport @e[tag=cursor_2,limit=1] @e[tag=cursor_1,limit=1]
execute store result entity @e[tag=cursor_1,limit=1] Rotation[0] float 0.001 run scoreboard players get C1 trilaterate
execute store result entity @e[tag=cursor_2,limit=1] Rotation[0] float 0.001 run scoreboard players get C2 trilaterate
# and move forward 'b'
scoreboard objectives add forward_n dummy
scoreboard players operation n forward_n = b trilaterate

scoreboard players set d trilaterate 999

execute as @e[tag=cursor_1] at @s run function netherspawn:coord_at_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation x trilaterate = x coord_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation z trilaterate = z coord_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation d trilaterate = d coord_distance

scoreboard objectives add debug_trilat dummy
scoreboard players operation d1 debug_trilat = d coord_distance
scoreboard players operation x1 debug_trilat = x coord_distance
scoreboard players operation z1 debug_trilat = z coord_distance

execute as @e[tag=cursor_2] run function netherspawn:coord_at_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation x trilaterate = x coord_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation z trilaterate = z coord_distance
execute if score d coord_distance < d trilaterate run scoreboard players operation d trilaterate = d coord_distance

scoreboard players operation d2 debug_trilat = d coord_distance
scoreboard players operation x2 debug_trilat = x coord_distance
scoreboard players operation z2 debug_trilat = z coord_distance
