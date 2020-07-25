
kill @e[tag=tp_player_cursor]
execute in minecraft:the_nether run summon minecraft:armor_stand 0 0 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["tp_player_cursor"]}
tag @s add netherspawn_tp_victim
execute as @e[tag=tp_player_cursor,limit=1] at @s run function netherspawn:tp_spawn_impl
tag @s remove netherspawn_tp_victim