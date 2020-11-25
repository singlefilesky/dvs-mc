## tome of safe passage
# nerfed

execute at @a[nbt={Inventory:[{Slot:-106b,tag:{safezone:1}}]}] run effect give @s saturation 11 0 true
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{safezone:1}}]}] run tag @e[type=#dvsdata:meanie,distance=..5] add byebye
execute at @e[tag=byebye] run particle minecraft:heart ~ ~1 ~ 1 1 0 100 2 force
execute as @e[tag=byebye] run tp @s ~ ~-1000 ~