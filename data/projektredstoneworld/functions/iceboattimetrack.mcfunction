# This must be repeated by a repeated command block at the very least, iceboat_tick and iceboat_time can be gotten but not set
# This function must be repeated for as long as the current race lasts (if there's a parallel race, don't do parallel races >:T)
# Each boater must be given the tag iceboat_time_tracked

scoreboard players add @a[tag=iceboat_time_tracked] iceboat_tick 1
scoreboard players operation @a[tag=iceboattimerunning] iceboat_time = @a[tag=iceboat_time_tracked] iceboat_tick
scoreboard players operation @a[tag=iceboattimerunning] iceboat_time /= 20 CONSTANTS