scoreboard objectives add netherspawned dummy
execute as @p unless score @s netherspawned matches 1 run function netherspawn:spawn/tp_new_player