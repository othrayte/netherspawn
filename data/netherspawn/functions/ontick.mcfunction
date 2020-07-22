scoreboard objectives add netherspawn dummy
#execute as @p at @p run function netherspawn:estimate_portal_location
#execute unless score setup netherspawn matches 1 run scoreboard players add timeout netherspawn 100
#execute unless score setup netherspawn matches 1 run scoreboard players add setup netherspawn 1
#execute if score timeout netherspawn matches 0 run scoreboard players add timeout netherspawn 100
#execute if entity @a[tag=!netherSpawned] run scoreboard players remove timeout netherspawn 1
#execute if score timeout netherspawn matches 99 if entity @a[tag=!netherSpawned] run function netherspawn:process
