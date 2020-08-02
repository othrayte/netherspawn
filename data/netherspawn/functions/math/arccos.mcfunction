scoreboard objectives add ns_arccos dummy

# degrees(acos(x)-π/2) = degrees((-939x + 922x³) / (1000 + -1285x² + 296x⁴))
#                      = 180 * ((-939x + 922x³) / (1000 + -1285x² + 296x⁴)) / PI
#                      = 180 * ((-939x + 922x³) / (1000 + -1285x² + 296x⁴)) / PI

# scaling x by 1000 to do int arithmetic
#                      = degrees((-0.939x + x³/1,084,599) / (1000 + -x²/778 + x⁴/3,378,378,378))
#                      = degrees((717570*(s - t ))/(778458118 - 1000*x^2 + (s*t/4427))) where s=x^3/1000 t=1019x
#                           717570*(s - t)
#         acos(x/1000) = --------------------------------------------
#                         778458118 - 1000*x^2 + (s*t/4427)
#                    s = x^3/1000
#                    t = 1019x

#                      = (718*(s - t ))/(778458 - x^2 + floor(s*t/4427052))) where s=floor(x^3/1000) t=1019x x=floor(w), w=-1000 to 1000
#                           718*(s - t)
#         acos(x/1000) = --------------------------------------------
#                         778458 - x^2 + (s*t/4427052)
#                    s = x^3/1000
#                    t = 1019x

#                      = (718*(s - t ))/(778458 - x^2 + floor(s*x/4345))) where s=floor(x^3/1000) t=1019x x=floor(w), w=-1000 to 1000
#                           718*(s - t)
#         acos(x/1000) = --------------------------------------------
#                         778458 - x^2 + (s*x/4345)
#                    s = x^3/1000
#                    t = 1019x

scoreboard players set A ns_arccos 718
scoreboard players set B ns_arccos 778458
scoreboard players set C ns_arccos 4345
scoreboard players set D ns_arccos 1019
scoreboard players set KPI ns_arccos 3142
scoreboard players set K180 ns_arccos 180000
scoreboard players set HPI ns_arccos 1571
scoreboard players set ONEK ns_arccos 1000

scoreboard players operation x2 ns_arccos = x ns_arccos
scoreboard players operation x2 ns_arccos *= x ns_arccos

scoreboard players operation x3 ns_arccos = x2 ns_arccos
scoreboard players operation x3 ns_arccos *= x ns_arccos

scoreboard players operation s ns_arccos = x3 ns_arccos
scoreboard players operation s ns_arccos /= ONEK ns_arccos

scoreboard players operation t ns_arccos = D ns_arccos
scoreboard players operation t ns_arccos *= x ns_arccos

scoreboard players operation num ns_arccos = s ns_arccos
scoreboard players operation num ns_arccos -= t ns_arccos
scoreboard players operation num ns_arccos *= A ns_arccos

scoreboard players operation den_3 ns_arccos = s ns_arccos
scoreboard players operation den_3 ns_arccos *= x ns_arccos
scoreboard players operation den_3 ns_arccos /= C ns_arccos

scoreboard players operation den ns_arccos = B ns_arccos
scoreboard players operation den ns_arccos -= x2 ns_arccos
scoreboard players operation den ns_arccos += den_3 ns_arccos

scoreboard players operation result ns_arccos = num ns_arccos
scoreboard players operation result ns_arccos /= den ns_arccos
scoreboard players operation result ns_arccos += HPI ns_arccos
scoreboard players operation result ns_arccos *= K180 ns_arccos
scoreboard players operation result ns_arccos /= KPI ns_arccos

# plot degrees(acos(floor(x)/1000)-π/2), floor(degrees((-939((floor(x)/1000) + 922*(floor(x)/1000)³) / (1000 + -1285*(floor(x)/1000)² + 296*(floor(x)/1000)⁴))), x=-1000 to 1000

# (-0.000939115566365855 x + 0.0000000009217841528914573 x^3)/(1 - 0.0000012845906244690837 x^2 + 0.000000000000295624144969963174 x^4)
# (-0.000939115566365855 x + x^3/1,084,852,670.6205512712598838857137)/(1 - 0.0000012845906244690837 x^2 + 0.000000000000295624144969963174 x^4)
# ((-1,018,802.0301933293521511271737731 x + x^3)/1,084,852,670.6205512712598838857137)/(1 - 0.0000012845906244690837 x^2 + 0.000000000000295624144969963174 x^4)


#plot degrees(acos(w/1000)-π/2 - ((-1,018,802.030 w + w^3)/1,084,852,671)/(1 - 0.000001284590624 w^2 + 0.0000000000002956241449 w^4)) where w=floor(x), x=-1000 to 1000
#plot degrees(acos(w/1000)-π/2 - ((-1,018.802030 w + w^3/1000)/1,084,852.671)/(1 - 0.000001284590624 w^2 + 0.0000000000002956241449 w^4)) where w=floor(x), x=-1000 to 1000
#plot degrees(acos(w/1000)-π/2 - ((-1,018.802030 w + w^3/1000)/1084852.671)/(1 - 0.000001284590624 w^2 + w^4/3382673632000)) where w=floor(x), x=-1000 to 1000
#plot degrees(acos(w/1000)-π/2 - ((-1,018.802030 w + w^3/1000)/1084852.671)/(1 - 0.000001284590624 w^2 + (w^3/1000)*(w/3382673632))) where w=floor(x), x=-1000 to 1000
#(1 - 0.000001284590624 w^2 + (w^3/1000)*(w/3382673632))
#(778,458.1183 - w^2 + (w^3/1000)*(w/4,345.350832))/778,458.1183
#plot degrees(acos(w/1000)-π/2 - ((-1018.802030 w + w^3/1000)/1084852.671)/((778458.1183 - w^2 + (w^3/1000)*(w/4345.350832))/778458.1183)) where w=floor(x), x=-1000 to 1000
#plot degrees(acos(x/1000)-π/2 - ((-1018.802030 x + x^3/1000)/1084852.671)*(778458.1183/(778458.1183 - x^2 + (x^3/1000)*(x/4345.350832)))) where x=floor(w), w=-1000 to 1000
#plot degrees(acos(x/1000)-π/2 - 778458.1183/1084852.671*((-1018.802030 x + x^3/1000)/(778458.1183 - x^2 + (x^3/1000)*(x/4345.350832)))) where x=floor(w), w=-1000 to 1000
#plot degrees(1000*(acos(x/1000)-π/2) - 1000*((-1018.802030 x + x^3/1000)/(778458.1183 - x^2 + (x^3/1000)*(x/4345.350832)))/1.393591570)/1000 where x=floor(w), w=-1000 to 1000
#plot degrees(1000*(acos(x/1000)-π/2) - 1000000*(-1018.802030 x + x^3/1000)/(778458118.3 - 1000*x^2 + (x^3/1000)*(x/4.345350832))/1.393591570)/1000 where x=floor(w), w=-1000 to 1000
#plot degrees(1000*(acos(x/1000)-π/2) - 717570.3567*(-1018.802030 x + x^3/1000)/(778458118.3 - 1000*x^2 + (x^3/1000)*(x/4.345350832)))/1000 where x=floor(w), w=-1000 to 1000
#plot degrees(1000*(acos(x/1000)-π/2) - (717570.3567*(x^3/1000 - 1018.802030x ))/(778458118.3 - 1000*x^2 + (x^3/1000)*(1018.802030*x/4427.052249)))/1000 where x=floor(w), w=-1000 to 1000
#plot degrees(1000*(acos(x/1000)-π/2) - (717570.3567*(s - t ))/(778458118.3 - 1000*x^2 + s*(t/4427.052249)))/1000 where s=floor(x^3/1000), t=1018.802030x, x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((717570.3567*(s - t ))/(778458118.3 - 1000*x^2 + s*(t/4427.052249))))/1000 where s=floor(x^3/1000) t=1018.802030x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((717570.3567*(s - t ))/(778458118.3 - 1000*x^2 + floor(s*t/4427.052249))))/1000 where s=floor(x^3/1000) t=1018.802030x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((717570*(s - t ))/(778458118 - 1000*x^2 + floor(s*t/4427))))/1000 where s=floor(x^3/1000) t=1019x x=floor(w), w=-1000 to 1000
# = ((717570*(s - t ))/(778458118 - 1000*x^2 + (s*t/4427))) where s=x^3/1000 t=1019x

#plot (1000*(acos(x/1000)-π/2) - floor((717570.3567*(s - t ))/(778458118.3 - 1000*x^2 + floor(s*t/4427.052249))))/1000 where s=floor(x^3/1000) t=1018.802030x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((717.5703567*(s - t ))/(778458.1183 - x^2 + floor(s*t/4427052.249))))/1000 where s=floor(x^3/1000) t=1018.802030x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((718*(s - t ))/(778458 - x^2 + floor(s*t/4427052))))/1000 where s=floor(x^3/1000) t=1019x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((717.5703567*(s - t ))/(778458.1183 - x^2 + floor(s*x/4,345.350832))))/1000 where s=floor(x^3/1000) t=1018.802030x x=floor(w), w=-1000 to 1000
#plot (1000*(acos(x/1000)-π/2) - floor((718*(s - t ))/(778458 - x^2 + floor(s*x/4345))))/1000 where s=floor(x^3/1000) t=1019x x=floor(w), w=-1000 to 1000
