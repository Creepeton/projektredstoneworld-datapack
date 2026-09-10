# This function must be executed through a command block at the finish line

# The message is open to amendment, made to look like /say since Ezra mainly uses that
execute as @p[tag=iceboat_time_tracked] run tellraw @a [{"text":"[IceBoat] ","color":"dark_aqua"},{"selector":"@p[tag=iceboat_time_tracked]"},{"text":" has finished the track in roughly "},{"score":{"name":"@s","objective":"iceboat_time"}}, {"text":" seconds! (exactly "},{"score":{"name":"@s","objective":"iceboat_tick"}},{"text":" ticks)"}]
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_tick
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_time
tag @p[tag=iceboat_time_tracked] remove iceboat_time_tracked
