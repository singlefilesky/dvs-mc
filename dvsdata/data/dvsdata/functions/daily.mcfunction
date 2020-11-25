## Daily Bonus
# FX
execute at @e[tag=dailyNPC] run particle minecraft:heart ~ ~1 ~ 1 1 0 500 7 force
# Claim announcement
title @s reset
title @s times 5 150 50
title @s subtitle {"text":"Daily Bonus Claimed!","italic":true,"color":"dark_green"}
title @s title {"text":"Woohoo!","bold":true,"color":"#00FF13"}
tellraw @s ["",{"text":"You just claimed a "},{"text":"Daily Bonus","bold":true,"color":"#00FF13"},{"text":"! Come back again tomorrow for another boost!"}]
# Grant Rewards
give @s iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:fortune",lvl:2s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
effect give @s instant_health 144000 99 false
# Set Claimed Var
scoreboard players set @s claimedDaily 1