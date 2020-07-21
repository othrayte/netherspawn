# X (west vs east)
execute as @s at @s positioned ~30 ~ ~ store result score east locate_portal run locate Ruined_Portal
execute as @s at @s positioned ~-30 ~ ~ store result score west locate_portal run locate Ruined_Portal

execute if score east locate_portal < west locate_portal run scoreboard players set theta locate_portal -90
execute unless score east locate_portal < west locate_portal run scoreboard players set theta locate_portal 90

# range 180 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~90 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-180 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 45
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 45

#range 90 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~45 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-90 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 23
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 23

#range 45 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~23 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-46 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 11
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 11

#range 22.5 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~11 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-22 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 6
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 6

#range 11.25 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~6 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-12 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 3
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 3

#range 5.625 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~3 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-6 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 1
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 1

#range 2.8125 degress
execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal
execute as @s at @s teleport @s ~ ~ ~ ~1 ~
execute at @s positioned ^ ^ ^30 store result score right locate_portal run locate Ruined_Portal
execute as @s at @s teleport @s ~ ~ ~ ~-2 ~
execute at @s positioned ^ ^ ^30 store result score left locate_portal run locate Ruined_Portal

execute if score left locate_portal < right locate_portal run scoreboard players remove theta locate_portal 1
execute unless score left locate_portal < right locate_portal run scoreboard players add theta locate_portal 1

execute store result entity @s Rotation[0] float 1 run scoreboard players get theta locate_portal