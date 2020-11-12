## torches and lanterns as light sources
# main hand
execute as @a[nbt={SelectedItem:{id:"minecraft:torch"}}] run effect give @s night_vision 3
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_torch"}}] run effect give @s night_vision 3
execute as @a[nbt={SelectedItem:{id:"minecraft:lantern"}}] run effect give @s night_vision 3
execute as @a[nbt={SelectedItem:{id:"minecraft:soul_lantern"}}] run effect give @s night_vision 3
# off hand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] run effect give @s night_vision 3
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_torch"}]}] run effect give @s night_vision 3
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lantern"}]}] run effect give @s night_vision 3
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:soul_lantern"}]}] run effect give @s night_vision 3
