scoreboard objectives add locate_portal dummy
scoreboard players set threshold locate_portal 6
# if 2 block in front better go there
execute as @e[tag=lp_cursor] at @s store result score curr locate_portal run locate Ruined_Portal
execute as @e[tag=lp_cursor] at @s positioned ^ ^ ^2 store result score next locate_portal run locate Ruined_Portal
execute as @e[tag=lp_cursor] at @s run teleport @s ~ ~ ~ ~ 0
execute as @e[tag=lp_cursor] if score next locate_portal < curr locate_portal as @s at @s run teleport @s ^ ^ ^2
# else rotate 90deg
execute as @e[tag=lp_cursor] unless score next locate_portal < curr locate_portal as @s at @s run teleport @s ~ ~ ~ ~90 ~
execute as @e[tag=lp_cursor] if score curr locate_portal <= threshold locate_portal as @s at @s run schedule clear netherspawn:find_portal_step
execute as @e[tag=lp_cursor] unless score curr locate_portal <= threshold locate_portal as @s at @s run schedule function netherspawn:find_portal_step 1t replace
