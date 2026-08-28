# This function must be executed through a command block at the finish line

execute as @p[tag=iceboat_time_tracked] store result storage projektredstoneworld:iceboat_time_result seconds float .05 run scoreboard players get @s iceboat_tick
# The message is open to amendment, made to look like /say since Ezra mainly uses that
tellraw @a [{"text":"[@ ]"},{"selector":"@p[tag=iceboat_time_tracked]"},{"text":" has finished the track in"},{"storage":"projektredstoneworld:iceboat_time_result","nbt":"seconds"}, {"text":" seconds!"}]
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_tick
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_time
tag @p[tag=iceboat_time_tracked] remove iceboat_time_tracked