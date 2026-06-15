execute if score #tagchasers info matches 0 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] {"text":"Tag mode has been set to: Infection"}
execute if score #tagchasers info matches 1..4 run tellraw @a[x=281,y=2,z=649,dx=11,dy=8,dz=21] [{"text":"Tag mode has been set to: "},{"score":{"name":"#tagchasers","objective":"info"}},{"text":" chaser(s)"}]

fill 289 5 654 289 5 658 minecraft:stone_button[face=wall,facing=west,powered=false]

fill 291 6 654 291 6 658 minecraft:pink_stained_glass

execute if score #tagchasers info matches 0 run setblock 291 6 654 minecraft:redstone_block
execute if score #tagchasers info matches 1 run setblock 291 6 655 minecraft:redstone_block
execute if score #tagchasers info matches 2 run setblock 291 6 656 minecraft:redstone_block
execute if score #tagchasers info matches 3 run setblock 291 6 657 minecraft:redstone_block
execute if score #tagchasers info matches 4 run setblock 291 6 658 minecraft:redstone_block
