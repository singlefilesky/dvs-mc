## Daily and Weekly Rewards NPCs
# Populate scoreboard DB if for players with null data
scoreboard players add @e[type=minecraft:player] claimedDaily 0
scoreboard players add @e[type=minecraft:player] claimedWeekly 0

# Screen notification
# - Daily
execute as @e[scores={claimedDaily=0}] at @s if entity @e[tag=dailyNPC,distance=..2] run tag @s add claimingDaily
execute as @e[tag=claimingDaily] run function dvsdata:daily
execute as @e[tag=claimingDaily] run tag @s remove claimingDaily

# - Weekly
execute as @e[scores={claimedWeekly=0}] at @s if entity @e[tag=weeklyNPC,distance=..2] run tag @s add claimingWeekly
execute as @e[tag=claimingWeekly] run function dvsdata:weekly
execute as @e[tag=claimingWeekly] run tag @s remove claimingWeekly