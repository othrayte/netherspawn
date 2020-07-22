
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
execute unless score a epl matches 1..512 run scoreboard players set a epl 64

# Get 'a', 'b', and 'c'
scoreboard objectives add trilaterate dummy
scoreboard players operation a trilaterate = a epl
scoreboard players set theta trilaterate 0

#scoreboard players reset d epl

# Locate based on +64
function netherspawn:trilaterate

execute if score d trilaterate matches ..15 run scoreboard players operation d epl = d trilaterate
execute if score d trilaterate matches ..15 run scoreboard players operation x epl = x trilaterate
execute if score d trilaterate matches ..15 run scoreboard players operation z epl = z trilaterate

# Locate based on -64
scoreboard players set theta trilaterate -180000
execute unless score d trilaterate matches ..15 run function netherspawn:trilaterate

execute if score d trilaterate matches ..15 run scoreboard players operation d epl = d trilaterate
execute if score d trilaterate matches ..15 run scoreboard players operation x epl = x trilaterate
execute if score d trilaterate matches ..15 run scoreboard players operation z epl = z trilaterate
