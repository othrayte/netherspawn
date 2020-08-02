
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

scoreboard objectives add ns_estportalloc dummy
execute unless score a ns_estportalloc matches 1..512 run scoreboard players set a ns_estportalloc 64
scoreboard players set x ns_estportalloc 0
scoreboard players set z ns_estportalloc 0

# Get 'a', 'b', and 'c'
scoreboard objectives add ns_trilaterate dummy
scoreboard players operation a ns_trilaterate = a ns_estportalloc
scoreboard players set theta ns_trilaterate 0

#scoreboard players reset d ns_estportalloc

# Locate based on +64
function netherspawn:math/trilaterate

execute if score d ns_trilaterate matches ..15 run scoreboard players operation d ns_estportalloc = d ns_trilaterate
execute if score d ns_trilaterate matches ..15 run scoreboard players operation x ns_estportalloc = x ns_trilaterate
execute if score d ns_trilaterate matches ..15 run scoreboard players operation z ns_estportalloc = z ns_trilaterate

# Locate based on -64
scoreboard players set theta ns_trilaterate -180000
execute unless score d ns_trilaterate matches ..15 run function netherspawn:math/trilaterate

execute if score d ns_trilaterate matches ..15 run scoreboard players operation d ns_estportalloc = d ns_trilaterate
execute if score d ns_trilaterate matches ..15 run scoreboard players operation x ns_estportalloc = x ns_trilaterate
execute if score d ns_trilaterate matches ..15 run scoreboard players operation z ns_estportalloc = z ns_trilaterate
