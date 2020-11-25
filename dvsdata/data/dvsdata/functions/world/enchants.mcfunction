## Custom "Enchants"
# Bonus Time from Daily Perks
execute as @e[nbt={ActiveEffects:[{Id:6b,Amplifier:99b}]}] run tag @s add dailyBoost
execute at @e[tag=dailyBoost] if entity @e[type=#dvsdata:meanie,distance=..4] run tag @e[type=#dvsdata:meanie,distance=..12] add calmDown
execute as @e[tag=calmDown] run data merge entity @s {Health:1f,Attributes:[{Name:generic.max_health,Base:1},{Name:generic.follow_range,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:0.1}]}
execute as @e[tag=calmDown,type=minecraft:creeper] run kill @s
tag @e[tag=calmDown] remove calmDown
tag @e[tag=dailyBoost] remove dailyBoost

# tome of safe passage
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{safezone:1}}]}] run effect give @s instant_health 3000 99 false
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{safezone:1}}]}] run tag @e[type=#dvsdata:meanie,distance=..5] add byebye
execute at @e[tag=byebye] run particle minecraft:heart ~ ~1 ~ 1 1 0 100 2 force
execute as @e[tag=byebye] run tp @s ~ ~-1000 ~