function netherspawn:locate_portal_pick

execute as @e[tag=lp_center] at @s facing entity @e[tag=lp_target] eyes run teleport @e[tag=lp_cursor] ^ ^ ^2

tag @e[tag=lp_target] remove lp_target