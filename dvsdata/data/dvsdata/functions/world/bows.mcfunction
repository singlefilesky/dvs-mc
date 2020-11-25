## Bows module. modifies fired arrows.
# Tag added to users holding specific bow each tick
tag @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:1}}}] add hasAng
tag @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:2}}}] add hasSpr
tag @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{CustomModelData:3}}}] add hasStm

# Tag added to arrows fired from aforementioned players
execute at @a[tag=hasAng,scores={usedBow=1..}] positioned ~ ~1 ~ run tag @e[type=arrow,distance=..2] add ar1
execute at @a[tag=hasSpr,scores={usedBow=1..}] positioned ~ ~1 ~ run tag @e[type=arrow,distance=..2] add ar2
execute at @a[tag=hasStm,scores={usedBow=1..}] positioned ~ ~1 ~ run tag @e[type=arrow,distance=..2] add ar3

# Bow Perks
execute as @e[tag=hasAng] run effect give @s slow_falling 11 0 true
execute as @e[tag=hasSpr] run effect give @s speed 11 0 true

# Remove player tags for next tick
tag @a[tag=hasAng] remove hasAng
tag @a[tag=hasSpr] remove hasSpr
tag @a[tag=hasStm] remove hasStm

## Modify arrows per bow
# Levitates after forming cloud wherever it hits. Needs scaling down to 2 seconds at amp 2
execute as @e[tag=ar1] run data merge entity @s {pickup:0b,CustomPotionEffects:[{Id:25b,Amplifier:4b,Duration:20}]}
execute at @e[tag=ar1,nbt={inGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"poof",Radius:5f,Duration:30,Effects:[{Id:25b,Amplifier:4b,Duration:20}]}

# Slow and weaken target. Apply glow. Always causes critical hits.
execute as @e[tag=ar2] run data merge entity @s {pickup:0b,damage:4d,crit:1b,PierceLevel:9b,CustomPotionEffects:[{Id:18b,Amplifier:0b,Duration:100}]}
execute at @e[tag=ar2] run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0 5 force

# Call Down the power from above.
execute as @e[tag=ar3] run data merge entity @s {PierceLevel:5b,CustomPotionEffects:[{Id:24b,Amplifier:0b,Duration:140}]}
execute at @e[tag=ar3,nbt={inGround:1b}] run tag @e[type=#dvsdata:meanie,distance=..4] add feelTheThunder
execute at @e[tag=feelTheThunder] run summon lightning_bolt ~ ~ ~
tag @e[tag=feelTheThunder] remove feelTheThunder

# Destroy arrow when it makes contact with surface
kill @e[tag=ar1,nbt={inGround:1b}]
kill @e[tag=ar2,nbt={inGround:1b}]
kill @e[tag=ar3,nbt={inGround:1b}]

# Tell scoreboard we are no longer using bow until we do again
scoreboard players set @a[scores={usedBow=1..}] usedBow 0