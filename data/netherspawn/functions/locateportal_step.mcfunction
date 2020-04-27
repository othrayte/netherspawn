function netherspawn:locateportal_single

kill @e[tag=cursor_candiate]

execute unless score closest portal_distance matches 0 run function netherspawn:locateportal_step
