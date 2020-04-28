say Searching for valid spawn locations

function netherspawn:choose_spawn_setup

function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z
function netherspawn:choose_spawn_z

kill @e[tag=nether_spawnpoint_tester]

execute as @e[tag=nether_spawnpoint] at @s unless block ~ ~ ~ minecraft:air run kill @s
execute as @e[tag=nether_spawnpoint] at @s unless block ~ ~1 ~ minecraft:air run kill @s

execute in minecraft:the_nether if entity @e[tag=nether_spawnpoint] run say Found a valid spawn location
execute in minecraft:the_nether unless entity @e[tag=nether_spawnpoint] run say No valid spawn locations found
