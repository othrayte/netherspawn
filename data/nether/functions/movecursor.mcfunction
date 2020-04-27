
execute as @e[tag=ruined_portal_cursor] run function nether:measuredistances

execute if score x+ ruined_portal < d ruined_portal run execute as @e[tag=ruined_portal_cursor] positioned as @s run teleport ~1 ~ ~
execute if score x- ruined_portal < d ruined_portal run execute as @e[tag=ruined_portal_cursor] positioned as @s run teleport ~-1 ~ ~
execute if score z+ ruined_portal < d ruined_portal run execute as @e[tag=ruined_portal_cursor] positioned as @s run teleport ~ ~ ~1
execute if score z- ruined_portal < d ruined_portal run execute as @e[tag=ruined_portal_cursor] positioned as @s run teleport ~ ~ ~-1
