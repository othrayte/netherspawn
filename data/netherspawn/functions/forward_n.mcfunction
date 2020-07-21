scoreboard objectives add forward_n dummy

# Record starting location
execute store result score x forward_n run data get entity @s Pos[0] 1000
execute store result score z forward_n run data get entity @s Pos[2] 1000

# Move forward 1 and record location
execute as @s at @s run teleport ^ ^ ^1
execute store result score x' forward_n run data get entity @s Pos[0] 1000
execute store result score z' forward_n run data get entity @s Pos[2] 1000
execute as @s at @s run teleport ^ ^ ^-1

# Calc deltas
scoreboard players operation dX forward_n = x' forward_n
scoreboard players operation dX forward_n -= x forward_n
scoreboard players operation dZ forward_n = z' forward_n
scoreboard players operation dZ forward_n -= z forward_n

# Calc target location
scoreboard players operation dX forward_n *= n forward_n
scoreboard players operation dZ forward_n *= n forward_n
scoreboard players operation x2 forward_n = x forward_n
scoreboard players operation x2 forward_n += dX forward_n
scoreboard players operation z2 forward_n = z forward_n
scoreboard players operation z2 forward_n += dZ forward_n

# Move to that location
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x2 forward_n
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z2 forward_n
