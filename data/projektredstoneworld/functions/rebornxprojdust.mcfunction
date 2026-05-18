# Run as dust marker
execute unless entity @s[x=-152,y=42,z=891,dx=9,dy=10,dz=8] run return fail

# center line
execute at @s positioned ~ ~-0.15 ~ run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.08 0.04 0.08 0.001 1

# small spread
execute at @s positioned ~ ~-0.15 ~ positioned ^0.18 ^ ^0.13 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.08 0.04 0.08 0.001 1
execute at @s positioned ~ ~-0.15 ~ positioned ^-0.18 ^ ^0.13 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.08 0.04 0.08 0.001 1

# wider spread farther forward
execute at @s positioned ~ ~-0.15 ~ positioned ^0.45 ^ ^0.30 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.10 0.04 0.10 0.001 1
execute at @s positioned ~ ~-0.15 ~ positioned ^-0.45 ^ ^0.30 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.10 0.04 0.10 0.001 1
execute at @s positioned ~ ~-0.15 ~ positioned ^ ^0.28 ^0.30 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.10 0.04 0.10 0.001 1
execute at @s positioned ~ ~-0.15 ~ positioned ^ ^-0.28 ^0.30 run particle minecraft:dust 0.9 0.9 0.9 0.13 ~ ~ ~ 0.10 0.04 0.10 0.001 1



tp @s ^ ^ ^0.4
#particle dust 0.9 0.9 0.9 0.4 ~-0.2 ~-0.15 ~-0.2 0.4 0.6 1.5 0 1


# Loop
execute as @s at @s run function projektredstoneworld:rebornxprojdust
