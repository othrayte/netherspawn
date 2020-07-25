functionn netherspawn:reset

execute in minecraft:the_nether run forceload remove all

scoreboard objectives add netherspawn dummy
scoreboard objectives setdisplay sidebar netherspawn
scoreboard players set debug netherspawn 1