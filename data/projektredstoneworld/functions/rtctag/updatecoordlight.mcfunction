execute if score #tagcoord info matches 0 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Coordinate display for nearby players has been turned off"}
execute if score #tagcoord info matches 1 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Coordinate display for nearby players has been turned on. Players will be able to see the coordinates of the nearest player of the opposing team."}

fill 289 5 665 289 5 666 minecraft:stone_button[face=wall,facing=west,powered=false]

fill 291 6 665 291 6 666 minecraft:pink_stained_glass

execute if score #tagcoord info matches 0 run setblock 291 6 665 minecraft:redstone_block
execute if score #tagcoord info matches 1 run setblock 291 6 666 minecraft:redstone_block
