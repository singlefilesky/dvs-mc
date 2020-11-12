## torches and lanterns as light sources
# main hand
execute as @a[nbt={SelectedItem:{id:"minecraft:torch"}}] run effect give @s night_vision 11 1 true
execute as @a[nbt={SelectedItem:{id:"minecraft:lantern"}}] run effect give @s night_vision 11 1 true
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run effect give @s night_vision 11 1 true
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_lantern"}}] run effect give @s night_vision 11 1 true
# off hand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] run effect give @s night_vision 11 1 true
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lantern"}]}] run effect give @s night_vision 11 1 true
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_torch"}]}] run effect give @s night_vision 11 1 true
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] run effect give @s night_vision 11 1 true

## safezone item
# overworld mobs
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:stray,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:witch,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:zombie,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:spider,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:phantom,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:creeper,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:ravager,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:drowned,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:pillager,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:skeleton,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:enderman,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:vindicator,distance=..30]
execute as @e[type=minecraft:item,nbt={Item:{tag:{safezone:1}}}] run kill @e[type=minecraft:zombie_villager,distance=..30]
