# Runs when the head start ends

scoreboard players set #tagstatus info 3
scoreboard players operation #tagtimer info = #tagtime info
scoreboard players operation #tagtimer info *= 60000 CONSTANTS
