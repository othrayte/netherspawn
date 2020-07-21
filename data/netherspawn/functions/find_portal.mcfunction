summon minecraft:armor_stand ~ 34 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lp_cursor"]}

execute as @e[tag=lp_cursor] run function netherspawn:find_portal_step