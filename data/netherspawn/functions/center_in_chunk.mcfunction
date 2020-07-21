scoreboard objectives add vars dummy

execute store result score x vars run data get entity @s Pos[0] 10
execute store result score z vars run data get entity @s Pos[2] 10

scoreboard players set chunkWidth vars 80
scoreboard players set chunkCenter vars 40

scoreboard players operation x' vars = x vars
scoreboard players operation x' vars %= chunkWidth vars
scoreboard players operation x vars -= x' vars
scoreboard players operation x vars += chunkCenter vars

scoreboard players operation z' vars = z vars
scoreboard players operation z' vars %= chunkWidth vars
scoreboard players operation z vars -= z' vars
scoreboard players operation z vars += chunkCenter vars

execute store result entity @s Pos[0] float 10 run scoreboard players get x vars
execute store result entity @s Pos[2] float 10 run scoreboard players get z vars
