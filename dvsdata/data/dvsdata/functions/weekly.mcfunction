## Weekly Bonus
# FX
execute at @e[tag=weeklyNPC] run particle minecraft:heart ~ ~1 ~ 1 1 0 500 7 force
# Claim announcement
title @s reset
title @s times 5 150 50
title @s subtitle {"text":"Weekly Bonus Claimed!","italic":true,"color":"gold"}
title @s title {"text":"Woohoo!","bold":true,"color":"#FFE100"}
tellraw @s ["",{"text":"You just claimed a "},{"text":"Weekly Bonus","bold":true,"color":"#FFE100"},{"text":"! Come back again next week for even more awesome freebies!"}]
# Grant Rewards
give @s potion{display:{Name:'{"text":"Divine Essence","color":"aqua"}'},HideFlags:32,CustomPotionEffects:[{Id:3b,Amplifier:2b,Duration:180000},{Id:5b,Amplifier:3b,Duration:180000},{Id:11b,Amplifier:3b,Duration:180000},{Id:12b,Amplifier:1b,Duration:180000},{Id:26b,Amplifier:5b,Duration:180000}]} 1
loot give @s loot minecraft:chests/bastion_treasure
# Set Claimed Var
scoreboard players set @s claimedWeekly 1