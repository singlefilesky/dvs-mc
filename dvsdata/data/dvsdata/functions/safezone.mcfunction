## safezone function
# overworld mobs
tag @e[type=#dvsdata:meanie,distance=..35] add gotoHell
execute at @e[tag=gotoHell] run particle minecraft:soul ~ ~1 ~ 1 1 0 100 2 force
execute as @e[tag=gotoHell] run tp @s ~ -1200 ~