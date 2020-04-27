# Check which direction to go in x
execute at @s positioned ~ ~ ~ store result score best ruined_portal run locate Ruined_Portal
execute at @s positioned ~3 ~ ~ store result score current ruined_portal run locate Ruined_Portal

execute if score current ruined_portal < best ruined_portal as @s at @s run teleport @s ~ ~ ~ -90 0
execute if score current ruined_portal > best ruined_portal as @s at @s run teleport @s ~ ~ ~ 90 0