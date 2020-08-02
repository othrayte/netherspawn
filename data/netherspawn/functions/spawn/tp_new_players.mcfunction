scoreboard objectives add ns_netherspawned dummy
execute as @p unless score @s ns_netherspawned matches 1 run function netherspawn:spawn/tp_new_player