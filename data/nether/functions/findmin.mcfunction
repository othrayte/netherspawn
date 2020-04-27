
# Check which direction to go in x
execute at @s positioned ~ ~ ~ store result score best ruined_portal run locate Ruined_Portal
execute at @s positioned ~3 ~ ~ store result score current ruined_portal run locate Ruined_Portal

execute if score current ruined_portal < best ruined_portal as @s at @s run teleport @s ~ ~ ~ -90 0
execute if score current ruined_portal > best ruined_portal as @s at @s run teleport @s ~ ~ ~ 90 0

# Find the start of the lowest value
function nether:findmin_a
execute store result score a ruined_portal run data get entity @s Pos[0]

execute as @s at @s run teleport @s ~ ~ ~ 180 0

# Find the end of the lowest value
function nether:findmin_a
execute store result score b ruined_portal run data get entity @s Pos[0]

# Find midpoint in x
scoreboard players add two ruined_portal 2

scoreboard players operation x ruined_portal = a ruined_portal
scoreboard players operation x ruined_portal += b ruined_portal
scoreboard players operation x ruined_portal /= two ruined_portal

execute store result entity @s Pos[0] double 1 run scoreboard players get x ruined_portal

# Check which direction to go in z
execute at @s positioned ~ ~ ~ store result score best ruined_portal run locate Ruined_Portal
execute at @s positioned ~ ~ ~3 store result score current ruined_portal run locate Ruined_Portal

execute if score current ruined_portal < best ruined_portal as @s at @s run teleport @s ~ ~ ~ 0 0
execute if score current ruined_portal > best ruined_portal as @s at @s run teleport @s ~ ~ ~ 180 0

# Find the start of the lowest value
function nether:findmin_a
execute store result score a ruined_portal run data get entity @s Pos[2]

execute as @s at @s run teleport @s ~ ~ ~ 180 0

# Find the end of the lowest value
function nether:findmin_a
execute store result score b ruined_portal run data get entity @s Pos[2]

# Find midpoint in z
scoreboard players operation z ruined_portal = a ruined_portal
scoreboard players operation z ruined_portal += b ruined_portal
scoreboard players operation z ruined_portal /= two ruined_portal

execute store result entity @s Pos[2] double 1 run scoreboard players get z ruined_portal
