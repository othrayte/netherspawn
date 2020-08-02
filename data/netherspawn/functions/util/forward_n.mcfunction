scoreboard objectives add ns_forwardn dummy

# Record starting location
execute store result score x ns_forwardn run data get entity @s Pos[0] 1000
execute store result score z ns_forwardn run data get entity @s Pos[2] 1000

# Move forward 1 and record location
execute as @s at @s run teleport ^ ^ ^1
execute store result score x' ns_forwardn run data get entity @s Pos[0] 1000
execute store result score z' ns_forwardn run data get entity @s Pos[2] 1000
execute as @s at @s run teleport ^ ^ ^-1

# Calc deltas
scoreboard players operation dX ns_forwardn = x' ns_forwardn
scoreboard players operation dX ns_forwardn -= x ns_forwardn
scoreboard players operation dZ ns_forwardn = z' ns_forwardn
scoreboard players operation dZ ns_forwardn -= z ns_forwardn

# Calc target location
scoreboard players operation dX ns_forwardn *= n ns_forwardn
scoreboard players operation dZ ns_forwardn *= n ns_forwardn
scoreboard players operation x2 ns_forwardn = x ns_forwardn
scoreboard players operation x2 ns_forwardn += dX ns_forwardn
scoreboard players operation z2 ns_forwardn = z ns_forwardn
scoreboard players operation z2 ns_forwardn += dZ ns_forwardn

# Move to that location
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x2 ns_forwardn
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z2 ns_forwardn
