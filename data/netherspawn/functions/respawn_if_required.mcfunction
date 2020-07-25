scoreboard objectives add temp dummy

execute if score @s netherspawndead matches 1.. store success score o temp run data get entity @s SpawnForced
execute if score @s netherspawndead matches 1.. run tellraw @a [{"text":">"},{"score":{"name": "o","objective":"temp"}}]