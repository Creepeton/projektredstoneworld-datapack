# Run as dust marker
execute unless entity @s[x=-152,y=42,z=891,dx=9,dy=10,dz=8] run return fail

tp @s ^ ^ ^0.4
particle white_ash ~-0.2 ~-0.15 ~-0.2 0.4 0.3 0.4 0.015 1

# Loop
execute as @s at @s run function projektredstoneworld:rebornxprojdust
