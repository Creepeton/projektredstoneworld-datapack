# summon dummy entity to store our data, this wont cause any lag cause it litteraly cant do shit
execute in minecraft:overworld positioned -266.68 49.00 390.30 run summon marker ~ ~ ~ {Tags:["rtcminv_store","rtcminv_new"]}

# match it up with our id system
scoreboard players operation @e[tag=rtcminv_new] redstoneworldID = @s redstoneworldID
# copy our inventory to its
data modify entity @e[tag=rtcminv_new,limit=1] data.Inventory set from entity @s Inventory
# mark as finish copying
tag @e[tag=rtcminv_new] remove rtcminv_new