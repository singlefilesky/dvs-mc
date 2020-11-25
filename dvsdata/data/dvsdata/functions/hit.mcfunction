## Establish Damage
# BLOOD!!!
particle minecraft:block redstone_block ~ ~ ~ 0 0 0 1 50 force
# Damage undead and living mobs equally
effect give @e[type=#dvsdata:undead,distance=..1.71,limit=1] minecraft:instant_health 1 0
effect give @e[type=!#dvsdata:undead,distance=..1.71,limit=1] minecraft:instant_damage 1 0