## Raycasting
# Bullet trail
particle minecraft:ash ~ ~ ~ 0 0 0 1 2 force
# This distance ensures we hit chest area on most mobs
execute if entity @e[distance=..1.45,tag=!shooting] run function dvsdata:hit
# Recursiveness ^_^
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air positioned ~ ~-1.35 ~ unless entity @s[distance=50..] positioned ~ ~1.35 ~ run function dvsdata:raycast