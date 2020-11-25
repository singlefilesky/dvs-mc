## Setup variables
# Scoreboard
scoreboard objectives add usedBow minecraft.used:minecraft.bow
scoreboard objectives add usedCarrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add isSleeping minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add claimedDaily dummy
scoreboard objectives add claimedWeekly dummy

# Teams (for disabling PVP and highlighting)
team add Friendly
team modify Friendly color aqua
team modify Friendly friendlyFire false

team add Hostile
team modify Hostile color dark_red