kill @e[tag=locate_portal_blocks_cursor]
forceload add 0 0 0 0
summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["locate_portal_blocks_cursor"]}
execute as @e[tag=locate_portal_blocks_cursor,limit=1] at @s run function netherspawn:decay/enumerate_portal_blocks_impl

