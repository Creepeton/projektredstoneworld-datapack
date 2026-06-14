# INPUT INTO PLAYER #sqrtin, OUTPUT INTO PLAYER #sqrt

execute if score #sqrtin info matches ..0 run return fail

scoreboard players set #sqrtclampfactor info 1

# Call recursive clamping
execute if score #sqrtin info matches ..536870911 run function projektredstoneworld:sqrtclamp

# Initial guess of 2^15 for babylonian
scoreboard players set #sqrt info 32768

# Loop 1
scoreboard players operation #sqrtbound info = #sqrtin info
scoreboard players operation #sqrtbound info /= #sqrt info
scoreboard players operation #sqrtbound info += #sqrt info
scoreboard players operation #sqrtbound info /= 2 CONSTANTS

# Loop 2
scoreboard players operation #sqrtbound info = #sqrtin info
scoreboard players operation #sqrtbound info /= #sqrt info
scoreboard players operation #sqrtbound info += #sqrt info
scoreboard players operation #sqrtbound info /= 2 CONSTANTS

# Loop 3
scoreboard players operation #sqrtbound info = #sqrtin info
scoreboard players operation #sqrtbound info /= #sqrt info
scoreboard players operation #sqrtbound info += #sqrt info
scoreboard players operation #sqrtbound info /= 2 CONSTANTS

# Loop 4
scoreboard players operation #sqrtbound info = #sqrtin info
scoreboard players operation #sqrtbound info /= #sqrt info
scoreboard players operation #sqrtbound info += #sqrt info
scoreboard players operation #sqrtbound info /= 2 CONSTANTS

# Divide by clamping factor
scoreboard players operation #sqrt info /= #sqrtclampfactor info

# Restore initial value of #sqrtin
scoreboard players operation #sqrtin info /= #sqrtclampfactor info
scoreboard players operation #sqrtin info /= #sqrtclampfactor info

