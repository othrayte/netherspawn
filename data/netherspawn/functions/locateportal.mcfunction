scoreboard objectives add portal_distance dummy

summon minecraft:armor_stand 0 34 0 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["portal_cursor"]}

function netherspawn:locateportal_step

teleport @a @e[tag=portal_cursor,limit=1]
teleport @a ~ 34 ~

function netherspawn:deletecursors
