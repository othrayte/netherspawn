execute if score debug netherspawn matches 1 run tellraw @a [{"text": "[NetherSpawn] "},{"text": "DEBUG", "color":"#BE90D4"},{"text":": Player respawned: "}, {"selector":"@s"}]
execute unless data entity @s SpawnForced run function netherspawn:spawn/respawn_player

# If we teleported the player above then we also force their spawn, this line triggers both if we adjusted their spawnpoint on death or if we did it upon respawning
execute as @s at @s if entity @s[nbt={SpawnForced:1b}] run function netherspawn:spawn/post_respawn_effects
execute as @s at @s if entity @s[nbt={SpawnForced:1b}] run function netherspawn:decay/decay_portal
