function nether:doit_single

kill @e[tag=ruined_portal_cursor]

execute unless score closest ruined_portal matches 0 run function nether:doit_step
