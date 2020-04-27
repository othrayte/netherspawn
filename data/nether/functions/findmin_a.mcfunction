execute as @s at @s run teleport ^ ^ ^1
execute at @s positioned ~ ~ ~ store result score current ruined_portal run locate Ruined_Portal
execute if score current ruined_portal <= best ruined_portal run function nether:findmin_a


