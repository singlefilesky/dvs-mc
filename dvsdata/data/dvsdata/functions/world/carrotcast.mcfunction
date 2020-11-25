tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{gun:1}}}] add shooting
execute as @p[tag=shooting,scores={usedCarrot=1..}] at @s positioned ~ ~1.35 ~ run function dvsdata:raycast
execute as @p[tag=shooting,scores={usedCarrot=1..}] at @s run playsound minecraft:entity.firework_rocket.large_blast ambient @s ~ ~ ~ 5 0 1
scoreboard players set @a[scores={usedCarrot=1..}] usedCarrot 0
tag @a[tag=shooting] remove shooting