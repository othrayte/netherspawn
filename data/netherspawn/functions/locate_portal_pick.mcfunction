execute as @e[tag=lp_probe] at @s store result score @s locate_portal run locate Ruined_Portal

execute as @e[tag=lp_center] at @s store result score d locate_portal run locate Ruined_Portal

scoreboard players operation closest locate_portal > @e[tag=lp_probe] locate_portal
scoreboard players operation closest locate_portal < @e[tag=lp_probe] locate_portal
scoreboard players operation @e[tag=lp_probe] locate_portal -= closest locate_portal
tag @e[tag=lp_probe, scores={locate_portal=0}, limit=1] add lp_target