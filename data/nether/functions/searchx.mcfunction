
# Find the start of the lowest value
function nether:findmin_a
execute store result score a ruined_portal run data get entity @s Pos[0]

execute as @s at @s run teleport @s ~ ~ ~ 180 0

# Find the end of the lowest value
function nether:findmin_a
execute store result score b ruined_portal run data get entity @s Pos[0]