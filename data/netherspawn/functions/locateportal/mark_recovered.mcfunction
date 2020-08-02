scoreboard players set search_radius netherspawn 0
scoreboard players set search_angle netherspawn 0
scoreboard players set spawnstate netherspawn 4
scoreboard players set spawnattempts netherspawn 0

tellraw @a [{"text": "[NetherSpawn] "},{"text": "INFO", "color":"#FFD700"},{"text": ": Spawn location found. Ready to spawn players."}]
