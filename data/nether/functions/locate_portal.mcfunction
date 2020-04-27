scoreboard objectives add ruined_portal dummy
scoreboard players add x ruined_portal 0
scoreboard players add z ruined_portal 0

function nether:makecursor

execute at @e[tag=ruined_portal_cursor] store result score d ruined_portal run locate Ruined_Portal
execute at @e[tag=ruined_portal_cursor] positioned ~2 ~ ~ store result score x ruined_portal run locate Ruined_Portal

execute positioned ~ ~ ~ store result score d ruined_portal run locate Ruined_Portal
execute positioned ~10 ~ ~ store result score xp ruined_portal run locate Ruined_Portal
execute positioned ~-10 ~ ~ store result score xn ruined_portal run locate Ruined_Portal
execute positioned ~ ~ ~10 store result score zp ruined_portal run locate Ruined_Portal
execute positioned ~ ~ ~-10 store result score zn ruined_portal run locate Ruined_Portal

scoreboard players operation x npdist = y ruined_portal
scoreboard players operation y npdist -= d ruined_portal

execute if score x' npdist >= z' npdist run say X
execute if score z' npdist > x' npdist run say Z

function nether:deletecursor