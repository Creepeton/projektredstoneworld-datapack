# Coord displays
execute as @a[tag=pontoka] at @s if score #tagcoord info matches 1 run function projektredstoneworld:rtctag/coorddisp

execute if score #tagstatus info matches ..1 run return fail

execute as @a[tag=pontokarun] run function projektredstoneworld:rtctag/bounds
execute as @a[tag=pontokachase] if score #tagstatus info matches 3 run function projektredstoneworld:rtctag/bounds
tag @a remove pontokaskibidi
execute unless score #tagstatus info matches 3 run tag @a[tag=pontokachase] add pontokaskibidi
title @a[tag=!tagrtc2bound,tag=!pontokaskibidi] times 0 20 10
execute if score #tagbounds info matches 1 as @a[tag=!tagrtc2bound,tag=!pontokaskibidi] run title @s title {"text":"You are out of bounds","color":"#FF0000"}
execute if score #tagbounds info matches 2 as @a[tag=!tagrtcbound,tag=!pontokaskibidi] run title @s title {"text":"You are out of bounds","color":"#FF0000"}
execute if score #tagbounds info matches 3 as @a[tag=!tagfirtcbound,tag=!pontokaskibidi] run title @s title {"text":"You are out of bounds","color":"#FF0000"}
# Change for logout protection
execute store result score #tagchasec info if entity @a[tag=pontokachase]
execute if score #tagbounds info matches -1 if score #tagchasec info matches 1 as @a[tag=!tagrtc2bound,tag=!pontokaskibidi] run title @s title {"text":"You are out of bounds","color":"#FF0000"}
execute if score #tagbounds info matches -1 if score #tagchasec info matches 2.. as @a[tag=!tagrtcbound,tag=!pontokaskibidi] run title @s title {"text":"You are out of bounds","color":"#FF0000"}
execute if score #tagbounds info matches 1 as @a[tag=!tagrtc2bound,gamemode=!creative,tag=pontokarun,tag=!pontokaskibidi] run damage @s 5 out_of_world
execute if score #tagbounds info matches 2 as @a[tag=!tagrtcbound,gamemode=!creative,tag=pontokarun,tag=!pontokaskibidi] run damage @s 5 out_of_world
execute if score #tagbounds info matches 3 as @a[tag=!tagfirtcbound,gamemode=!creative,tag=pontokarun,tag=!pontokaskibidi] run damage @s 5 out_of_world
# Change for logout protection
execute store result score #tagchasec info if entity @a[tag=pontokachase]
execute if score #tagbounds info matches -1 if score #tagchasec info matches 1 as @a[tag=!tagrtc2bound,tag=pontokarun,tag=!pontokaskibidi] run damage @s 5 out_of_world
execute if score #tagbounds info matches -1 if score #tagchasec info matches 2.. as @a[tag=!tagrtcbound,tag=pontokarun,tag=!pontokaskibidi] run damage @s 5 out_of_world

execute as @a[scores={tagdeathrip=1..},tag=pontokarun] run function projektredstoneworld:rtctag/deathrun
execute as @a[scores={tagdeathrip=1..},tag=pontokachase] run function projektredstoneworld:rtctag/deathchase
