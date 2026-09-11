# This function must be executed through a command block at the finish line

scoreboard players add @a iceboat_position 1
execute as @p[tag=iceboat_time_tracked] run tellraw @a [{"text":"[IceBoat] ","color":"#f9dc20"},{"selector":"@p[tag=iceboat_time_tracked]"},{"text":" has finished the track in"}, {"score":{"name":"@s","objective":"iceboat_position"}}, {"text": "in roughly "},{"score":{"name":"@s","objective":"iceboat_time"}}, {"text":" seconds! (exactly "},{"score":{"name":"@s","objective":"iceboat_tick"}},{"text":" ticks)"}]
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_tick
scoreboard players reset @p[tag=iceboat_time_tracked] iceboat_time
tag @p[tag=iceboat_time_tracked] remove iceboat_time_tracked
execute unless entity @a[tag=iceboat_time_tracked] run scoreboard players set @a iceboat_position 0
