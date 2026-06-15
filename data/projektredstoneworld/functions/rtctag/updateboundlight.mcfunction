execute if score #tagbounds info matches -1 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Tag bounds have been set to: Automatic. The game will determine the bounds based off the number of chasers."}
execute if score #tagbounds info matches 1 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Tag bounds have been set to: Tower 3.0. This is recommended for up to 2 chasers maximum. (Ideally 1)"}
execute if score #tagbounds info matches 2 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Tag bounds have been set to: RTC sector. This is recommended for a larger amount of chasers."}
execute if score #tagbounds info matches 3 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Tag bounds have been set to: Full FI-RTC complex. This mode is known as classic mode. WARNING: This mode is not balanced at all, and there is a risk of numerous exploits."}

fill 289 5 660 289 5 663 minecraft:stone_button[face=wall,facing=west,powered=false]

fill 291 6 660 291 6 663 minecraft:pink_stained_glass

execute if score #tagbounds info matches -1 run setblock 291 6 660 minecraft:redstone_block
execute if score #tagbounds info matches 1 run setblock 291 6 661 minecraft:redstone_block
execute if score #tagbounds info matches 2 run setblock 291 6 662 minecraft:redstone_block
execute if score #tagbounds info matches 3 run setblock 291 6 663 minecraft:redstone_block
