scoreboard objectives add ns_trilaterate dummy

# options:
#  * trilaterate:a, distance between
execute unless score a ns_trilaterate matches 1..512 run scoreboard players set a ns_trilaterate 64
#  * trilaterate:theta, from point 1 to point 2
execute unless score theta ns_trilaterate matches -180000..180000 run scoreboard players set theta ns_trilaterate 0
#  * trilaterate:n, target location category (see distance_to)
execute unless score n ns_trilaterate matches 0..17 run scoreboard players set n ns_trilaterate 10
# results:
#  * entity tagged 'cursor_1' at candidate location 1
#  * entity tagged 'cursor_2' at candidate location 2

scoreboard objectives add ns_distanceto dummy
scoreboard players operation n ns_distanceto = n ns_trilaterate

# Create 2 cursors, at '1' and '2'
kill @e[tag=cursor_1]
kill @e[tag=cursor_2]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_1"]}
execute store result entity @e[tag=cursor_1,limit=1] Rotation[0] float 0.001 run scoreboard players get theta ns_trilaterate
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["cursor_2"]}
execute store result entity @e[tag=cursor_2,limit=1] Rotation[0] float 0.001 run scoreboard players get theta ns_trilaterate

scoreboard objectives add ns_forwardn dummy
scoreboard players operation n ns_forwardn = a ns_trilaterate
execute as @e[tag=cursor_2] run function netherspawn:util/forward_n

execute as @e[tag=cursor_1] at @s run function netherspawn:util/distance_to
scoreboard players operation b ns_trilaterate = d ns_distanceto
execute as @e[tag=cursor_2] at @s run function netherspawn:util/distance_to
scoreboard players operation c ns_trilaterate = d ns_distanceto

scoreboard players operation a ns_trilatdebug = a ns_trilaterate
scoreboard players operation b ns_trilatdebug = b ns_trilaterate
scoreboard players operation c ns_trilatdebug = c ns_trilaterate

# Calc squares
scoreboard players operation a2 ns_trilaterate = a ns_trilaterate
scoreboard players operation a2 ns_trilaterate *= a ns_trilaterate
scoreboard players operation b2 ns_trilaterate = b ns_trilaterate
scoreboard players operation b2 ns_trilaterate *= b ns_trilaterate
scoreboard players operation c2 ns_trilaterate = c ns_trilaterate
scoreboard players operation c2 ns_trilaterate *= c ns_trilaterate

# Calc numerator
scoreboard players operation num ns_trilaterate = a2 ns_trilaterate
scoreboard players operation num ns_trilaterate += b2 ns_trilaterate
scoreboard players operation num ns_trilaterate -= c2 ns_trilaterate
scoreboard players set fiveh ns_trilaterate 500
scoreboard players operation num ns_trilaterate *= fiveh ns_trilaterate

# Calc denominator
scoreboard players operation den ns_trilaterate = a ns_trilaterate
scoreboard players operation den ns_trilaterate *= b ns_trilaterate

# Calc cos(C)
scoreboard players operation cosC ns_trilaterate = num ns_trilaterate
scoreboard players operation cosC ns_trilaterate /= den ns_trilaterate

# Calc C
scoreboard objectives add ns_arccos dummy
scoreboard players operation x ns_arccos = cosC ns_trilaterate
function netherspawn:math/arccos
scoreboard players operation C ns_trilaterate = result ns_arccos
scoreboard players operation C1 ns_trilaterate = theta ns_trilaterate
scoreboard players operation C2 ns_trilaterate = theta ns_trilaterate
scoreboard players operation C1 ns_trilaterate += C ns_trilaterate
scoreboard players operation C2 ns_trilaterate -= C ns_trilaterate

# Spawn a cursor facing the portal, (need to check both directions!)
teleport @e[tag=cursor_2,limit=1] @e[tag=cursor_1,limit=1]
execute store result entity @e[tag=cursor_1,limit=1] Rotation[0] float 0.001 run scoreboard players get C1 ns_trilaterate
execute store result entity @e[tag=cursor_2,limit=1] Rotation[0] float 0.001 run scoreboard players get C2 ns_trilaterate
# and move forward 'b'
scoreboard objectives add ns_forwardn dummy
scoreboard players operation n ns_forwardn = b ns_trilaterate

scoreboard players set d ns_trilaterate 999

execute as @e[tag=cursor_1] at @s run function netherspawn:util/coord_at_distance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation x ns_trilaterate = x ns_coorddistance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation z ns_trilaterate = z ns_coorddistance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation d ns_trilaterate = d ns_coorddistance

scoreboard objectives add ns_trilatdebug dummy
scoreboard players operation d1 ns_trilatdebug = d ns_coorddistance
scoreboard players operation x1 ns_trilatdebug = x ns_coorddistance
scoreboard players operation z1 ns_trilatdebug = z ns_coorddistance

execute as @e[tag=cursor_2] run function netherspawn:util/coord_at_distance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation x ns_trilaterate = x ns_coorddistance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation z ns_trilaterate = z ns_coorddistance
execute if score d ns_coorddistance < d ns_trilaterate run scoreboard players operation d ns_trilaterate = d ns_coorddistance

scoreboard players operation d2 ns_trilatdebug = d ns_coorddistance
scoreboard players operation x2 ns_trilatdebug = x ns_coorddistance
scoreboard players operation z2 ns_trilatdebug = z ns_coorddistance
