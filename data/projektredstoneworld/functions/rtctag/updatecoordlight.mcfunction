execute if score #tagcoord info matches 0 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Coordinate display for nearby players has been turned off"}
execute if score #tagcoord info matches 1 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Coordinate display for nearby players has been turned on. Players will be able to see the coordinates of the nearest player of the opposing team."}

fill 289 5 655 289 5 656 minecraft:stone_button[face=wall,facing=west,powered=false]

fill 291 6 655 291 6 656 minecraft:pink_stained_glass

execute if score #tagcoord info matches 0 run setblock 291 6 655 minecraft:redstone_block
execute if score #tagcoord info matches 1 run setblock 291 6 656 minecraft:redstone_block
